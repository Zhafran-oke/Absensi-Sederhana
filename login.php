<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Token Generator - TWS</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0f172a 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-card {
            background: rgba(255, 255, 255, 0.98);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 18px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
            backdrop-filter: blur(10px);
        }

        .brand-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #2563eb, #3b82f6);
            border-radius: 14px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 1.8rem;
            box-shadow: 0 8px 20px rgba(37, 99, 235, 0.35);
        }

        .input-group-text {
            background-color: #f8fafc;
            border-right: none;
            color: #64748b;
        }

        .form-control {
            border-left: none;
            background-color: #f8fafc;
            padding: 0.65rem 0.75rem;
        }

        .form-control:focus {
            background-color: #fff;
            box-shadow: none;
            border-color: #dee2e6;
        }

        .input-group:focus-within {
            box-shadow: 0 0 0 0.25rem rgba(37, 99, 235, 0.15);
            border-radius: 0.375rem;
        }

        .btn-primary-gradient {
            background: linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%);
            border: none;
            color: #fff;
            font-weight: 600;
            padding: 0.75rem;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .btn-primary-gradient:hover {
            background: linear-gradient(135deg, #1d4ed8 0%, #1e40af 100%);
            transform: translateY(-1px);
            box-shadow: 0 6px 18px rgba(37, 99, 235, 0.35);
        }

        .token-box {
            background-color: #0f172a;
            border-left: 4px solid #3b82f6;
            border-radius: 10px;
        }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 p-3">

    <script>
    // Redirect jika sudah login
    if (sessionStorage.getItem('SERVER_KEY') && sessionStorage.getItem('CLIENT_TOKEN_KEY')) {
        window.location.href = 'index.php';
    }
    </script>

    <div class="card login-card p-4 p-sm-5" style="width: 100%; max-width: 440px;">
        <!-- Header / Logo -->
        <div class="text-center mb-4">
            <div class="brand-icon mb-3">
                <i class="bi bi-shield-lock-fill"></i>
            </div>
            <h4 class="fw-bold text-dark mb-1">Presensi TWS</h4>
            <p class="text-muted small">Masukan kredensial untuk melakukan autentikasi API</p>
        </div>

        <!-- Alert Notification -->
        <div id="alertBox"></div>

        <!-- Form Login -->
        <form id="loginForm">
            <div class="mb-3">
                <label class="form-label small fw-semibold text-secondary">Username</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-person"></i></span>
                    <input type="text" id="username" class="form-control" placeholder="Masukan username" required autocomplete="off">
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label small fw-semibold text-secondary">Password</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-key"></i></span>
                    <input type="password" id="password" class="form-control" placeholder="Masukan password" required>
                </div>
            </div>

            <button type="submit" id="btnSubmit" class="btn btn-primary-gradient w-100 d-flex align-items-center justify-content-center gap-2">
                <span>Login & Generate Token</span>
                <i class="bi bi-arrow-right-short fs-5"></i>
            </button>
        </form>

        <!-- Display Token Generator -->
        <div id="tokenDisplay" class="mt-4 p-3 token-box text-white d-none">
            <div class="d-flex align-items-center gap-2 text-info mb-2">
                <i class="bi bi-check-circle-fill"></i>
                <strong class="small">Token Berhasil Di-generate!</strong>
            </div>
            
            <div class="small text-secondary mb-1">X-Server-Key:</div>
            <code class="text-break text-warning d-block mb-2 bg-dark p-2 rounded small" id="resServerKey"></code>
            
            <div class="small text-secondary mb-1">X-Client-Token:</div>
            <code class="text-break text-info d-block mb-3 bg-dark p-2 rounded small" id="resClientToken"></code>
            
            <div class="d-flex align-items-center gap-2 text-light small">
                <div class="spinner-border spinner-border-sm text-info" role="status"></div>
                <span>Mengalihkan ke halaman utama...</span>
            </div>
        </div>
    </div>

    <script>
    document.getElementById('loginForm').addEventListener('submit', function(e) {
        e.preventDefault();

        const usernameInput = document.getElementById('username').value;
        const passwordInput = document.getElementById('password').value;
        const alertBox = document.getElementById('alertBox');
        const btnSubmit = document.getElementById('btnSubmit');

        // Loading state
        btnSubmit.disabled = true;
        btnSubmit.innerHTML = `<span class="spinner-border spinner-border-sm" role="status"></span> Processing...`;

        fetch('api.php?action=login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username: usernameInput, password: passwordInput })
        })
        .then(res => res.json())
        .then(data => {
            if (data.status === 'success') {
                // Simpan token ke sessionStorage
                sessionStorage.setItem('SERVER_KEY', data.tokens.server_key);
                sessionStorage.setItem('CLIENT_TOKEN_KEY', data.tokens.client_token);
                sessionStorage.setItem('USER_NAME', data.user.fullname);

                // Tampilkan token di UI
                document.getElementById('resServerKey').innerText = data.tokens.server_key;
                document.getElementById('resClientToken').innerText = data.tokens.client_token;
                document.getElementById('tokenDisplay').classList.remove('d-none');

                alertBox.innerHTML = `<div class="alert alert-success py-2 small border-0"><i class="bi bi-check-circle me-1"></i> ${data.message}</div>`;

                setTimeout(() => {
                    window.location.href = 'index.php';
                }, 1800);
            } else {
                alertBox.innerHTML = `<div class="alert alert-danger py-2 small border-0"><i class="bi bi-exclamation-triangle me-1"></i> ${data.message}</div>`;
                btnSubmit.disabled = false;
                btnSubmit.innerHTML = `<span>Login & Generate Token</span> <i class="bi bi-arrow-right-short fs-5"></i>`;
            }
        })
        .catch(err => {
            alertBox.innerHTML = `<div class="alert alert-danger py-2 small border-0"><i class="bi bi-wifi-off me-1"></i> Gagal terhubung ke server API.</div>`;
            btnSubmit.disabled = false;
            btnSubmit.innerHTML = `<span>Login & Generate Token</span> <i class="bi bi-arrow-right-short fs-5"></i>`;
        });
    });
    </script>
</body>
</html>