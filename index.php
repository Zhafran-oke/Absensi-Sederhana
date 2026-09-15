<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Presensi Mahasiswa - TWS API Client</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
    <script>
        // Proteksi Halaman: Cek apakah token tersedia di sessionStorage
        if (!sessionStorage.getItem('SERVER_KEY') || !sessionStorage.getItem('CLIENT_TOKEN_KEY')) {
            window.location.href = 'login.php';
        }
    </script>

    <!-- Navbar & Informasi User -->
    <nav class="navbar navbar-dark bg-dark mb-4">
        <div class="container">
            <span class="navbar-brand mb-0 h1">TWS Attendance System</span>
            <div class="d-flex align-items-center gap-3">
                <span class="text-white small" id="userInfo">User: Admin</span>
                <button class="btn btn-outline-danger btn-sm" onclick="logout()">Logout</button>
            </div>
        </div>
    </nav>

    <div class="container pb-5">
        <!-- Display Token Aktif -->
        <div class="alert alert-info py-2 d-flex justify-content-between align-items-center">
            <span class="small"><strong>Active Session Token:</strong> <span id="activeTokenDisplay"></span></span>
        </div>

        <h2 class="mb-4 text-center">Manajemen Data Kehadiran</h2>

        <!-- Form Input/Edit -->
        <div class="card mb-4 shadow-sm">
            <div class="card-header bg-primary text-white">Form Kehadiran</div>
            <div class="card-body">
                <form id="attendanceForm">
                    <input type="hidden" id="attendanceId">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <label class="form-label">Nama Mahasiswa</label>
                            <input type="text" id="student" class="form-control" placeholder="Nama mahasiswa..." required>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Tanggal</label>
                            <input type="date" id="date" class="form-control" required>
                        </div>
                        <div class="col-md-2">
                            <label class="form-label">Status</label>
                            <select id="status" class="form-select" required>
                                <option value="Hadir">Hadir</option>
                                <option value="Izin">Izin</option>
                                <option value="Sakit">Sakit</option>
                                <option value="Alpa">Alpa</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Keterangan</label>
                            <input type="text" id="remark" class="form-control" placeholder="Keterangan / Alasan">
                        </div>
                    </div>
                    <div class="mt-3">
                        <button type="submit" class="btn btn-success">Simpan Data</button>
                        <button type="button" class="btn btn-secondary" onclick="resetForm()">Reset</button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Tabel Kehadiran -->
        <div class="card shadow-sm">
            <div class="card-header bg-dark text-white">Daftar Kehadiran</div>
            <div class="card-body">
                <table class="table table-bordered table-striped align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Nama Mahasiswa</th>
                            <th>Tanggal</th>
                            <th>Status</th>
                            <th>Keterangan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="attendanceTableBody">
                        <tr>
                            <td colspan="6" class="text-center">Memuat data...</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        const API_URL = 'api.php';

        // Mengambil Header Token dari SessionStorage
        function getAuthHeaders() {
            return {
                'Content-Type': 'application/json',
                'X-Server-Key': sessionStorage.getItem('SERVER_KEY') || '',
                'X-Client-Token': sessionStorage.getItem('CLIENT_TOKEN_KEY') || ''
            };
        }

        document.addEventListener('DOMContentLoaded', () => {
            document.getElementById('userInfo').innerText = 'User: ' + (sessionStorage.getItem('USER_NAME') || 'Admin');
            document.getElementById('activeTokenDisplay').innerText = sessionStorage.getItem('CLIENT_TOKEN_KEY');
            loadAttendanceData();
        });

        function loadAttendanceData() {
            fetch(API_URL, {
                    method: 'GET',
                    headers: getAuthHeaders()
                })
                .then(res => {
                    if (res.status === 401) {
                        alert('Sesi / Token tidak valid. Silakan login kembali.');
                        logout();
                        throw new Error('Akses ditolak: Token tidak valid');
                    }
                    return res.json();
                })
                .then(data => {
                    const tbody = document.getElementById('attendanceTableBody');
                    tbody.innerHTML = '';

                    if (!Array.isArray(data) || data.length === 0) {
                        tbody.innerHTML = '<tr><td colspan="6" class="text-center py-3">Tidak ada data kehadiran.</td></tr>';
                        return;
                    }

                    data.forEach((item, index) => {
                        let badgeClass = 'bg-secondary';
                        if (item.status === 'Hadir') badgeClass = 'bg-success';
                        else if (item.status === 'Izin') badgeClass = 'bg-warning text-dark';
                        else if (item.status === 'Sakit') badgeClass = 'bg-info text-dark';
                        else if (item.status === 'Alpa') badgeClass = 'bg-danger';

                        tbody.innerHTML += `
                    <tr>
                        <td>${index + 1}</td>
                        <td><strong>${item.student}</strong></td>
                        <td>${item.date}</td>
                        <td><span class="badge ${badgeClass}">${item.status}</span></td>
                        <td>${item.remark || '-'}</td>
                        <td>
                            <button class="btn btn-sm btn-warning me-1" onclick="editAttendance(${item.id}, '${item.student.replace(/'/g, "\\'")}', '${item.date}', '${item.status}', '${(item.remark || '').replace(/'/g, "\\'")}')">Edit</button>
                            <button class="btn btn-sm btn-danger" onclick="deleteAttendance(${item.id})">Hapus</button>
                        </td>
                    </tr>
                `;
                    });
                })
                .catch(err => {
                    document.getElementById('attendanceTableBody').innerHTML = `<tr><td colspan="6" class="text-center text-danger py-3">${err.message}</td></tr>`;
                });
        }

        document.getElementById('attendanceForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const id = document.getElementById('attendanceId').value;
            const payload = {
                student: document.getElementById('student').value,
                date: document.getElementById('date').value,
                status: document.getElementById('status').value,
                remark: document.getElementById('remark').value
            };

            const method = id ? 'PUT' : 'POST';
            if (id) payload.id = parseInt(id);

            fetch(API_URL, {
                    method: method,
                    headers: getAuthHeaders(),
                    body: JSON.stringify(payload)
                })
                .then(res => res.json())
                .then(res => {
                    alert(res.message);
                    resetForm();
                    loadAttendanceData();
                });
        });

        function editAttendance(id, student, date, status, remark) {
            document.getElementById('attendanceId').value = id;
            document.getElementById('student').value = student;
            document.getElementById('date').value = date;
            document.getElementById('status').value = status;
            document.getElementById('remark').value = remark;
        }

        function deleteAttendance(id) {
            if (confirm('Apakah Anda yakin ingin menghapus data ini?')) {
                fetch(API_URL, {
                        method: 'DELETE',
                        headers: getAuthHeaders(),
                        body: JSON.stringify({
                            id: id
                        })
                    })
                    .then(res => res.json())
                    .then(res => {
                        alert(res.message);
                        loadAttendanceData();
                    });
            }
        }

        function resetForm() {
            document.getElementById('attendanceId').value = '';
            document.getElementById('attendanceForm').reset();
        }

        function logout() {
            sessionStorage.clear();
            window.location.href = 'login.php';
        }
        
        // Fungsi untuk mendapatkan koordinat GPS pengguna
        function getLocationAndSubmit() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(
                    function(position) {
                        // Berhasil mendapatkan koordinat
                        const userLat = position.coords.latitude;
                        const userLng = position.coords.longitude;

                        console.log("Latitude:", userLat);
                        console.log("Longitude:", userLng);

                        // Kirim data ke API bersama koordinat GPS
                        sendAttendanceData(userLat, userLng);
                    },
                    function(error) {
                        alert("Gagal mengambil lokasi GPS. Pastikan Izin Lokasi diaktifkan!");
                    }
                );
            } else {
                alert("Browser Anda tidak mendukung Geolocation.");
            }
        }

        // Fungsi Fetch ke api.php
        function sendAttendanceData(lat, lng) {
            const student = document.getElementById('student').value;
            const date = document.getElementById('date').value;
            const status = document.getElementById('status').value;
            const remark = document.getElementById('remark').value;
            const phone = document.getElementById('phone').value;

            fetch('http://localhost/kehadiran-tws/api.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-Server-Key': 'RAKA_SERVER_KEY_22670072',
                        'X-Client-Token': activeToken
                    },
                    body: JSON.stringify({
                        student: student,
                        date: date,
                        status: status,
                        remark: remark,
                        phone: phone,
                        latitude: lat, // <-- Mengirimkan Latitude
                        longitude: lng // <-- Mengirimkan Longitude
                    })
                })
                .then(res => res.json())
                .then(data => {
                    alert(data.message);
                    if (data.status === 'success') location.reload();
                });
        }
    </script>
</body>

</html>