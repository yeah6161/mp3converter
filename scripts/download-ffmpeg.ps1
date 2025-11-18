
if (!(Get-Command python.exe -ErrorAction SilentlyContinue)) {
    Write-Host "Python tidak ditemukan. Install dulu sebelum lanjut."
    exit
}

# Cek file requirements
if (!(Test-Path "requirements.txt")) {
    Write-Host "requirements.txt tidak ditemukan."
    exit
}

# Install package
Write-Host "Menginstall dependencies..."
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
Write-Host "Selesai."
