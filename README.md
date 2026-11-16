# Linux Network and Remote Access

Dokumentasi ini dibuat untuk kompetensi **Mengonfigurasi Jaringan dan Akses Jarak Jauh Linux** pada Debian GNU/Linux 13. Semua catatan dan gambar yang ada di project ini harus sesuai dengan bukti yang benar-benar tersedia di workspace. Dokumen ini tidak mengklaim praktik selesai jika belum ada bukti yang mendukungnya.

## Tujuan

- Memahami fungsi IP, gateway, dan DNS pada jaringan Linux.
- Menguji konektivitas secara bertahap dengan langkah yang logis.
- Menyiapkan autentikasi SSH menggunakan pasangan kunci ed25519 dengan aman.
- Mengonfigurasi firewall seminimal mungkin agar akses tetap aman dan tidak terkunci.

## Lingkungan Praktik

- Sistem operasi: Debian GNU/Linux 13.
- Akses yang digunakan: terminal Linux dan, untuk beberapa lab, komputer klien Windows yang menjalankan PowerShell.
- Praktik dilakukan dengan memeriksa status sistem terlebih dahulu dan tidak mengubah konfigurasi permanen tanpa memahami kondisi awal.

## Struktur Folder

```text
Linux-Network-and-Remote-Access/
├── README.md
├── docs/
│   └── learning-outcome.md
├── labs/
│   ├── 01-network-configuration/
│   │   ├── README.md
│   │   └── evidence/
│   │       ├── 01-network-interface.png
│   │       ├── 02-network-gateway-dns.png
│   │       └── catatan-praktik.md
│   ├── 02-connectivity-diagnostics/
│   │   ├── README.md
│   │   └── evidence/
│   │       ├── 03-connectivity-test.png
│   │       ├── 04-connectivity-diagnostics.png
│   │       └── catatan-praktik.md
│   ├── 03-ssh-key-authentication/
│   │   ├── README.md
│   │   └── evidence/
│   │       ├── 05-ssh-key-generation.png
│   │       ├── 06-ssh-key-login.png
│   │       └── catatan-praktik.md
│   └── 04-firewall-configuration/
│       ├── README.md
│       └── evidence/
│           ├── 07-firewall-rules.png
│           ├── 08-firewall-verification.png
│           └── catatan-praktik.md
└── scripts/
    └── network-info.sh
```

## Status Pengerjaan

| Lab | Materi | Status |
|---|---|---|
| [01](labs/01-network-configuration/README.md) | Konfigurasi jaringan dasar | Sebagian: interface dan DNS terlihat; `ip route` belum terbukti |
| [02](labs/02-connectivity-diagnostics/README.md) | Diagnosis konektivitas | Sebagian: ping ke loopback, host lokal, dan 8.8.8.8 terlihat; gateway dan akses layanan belum terbukti sepenuhnya |
| [03](labs/03-ssh-key-authentication/README.md) | Autentikasi SSH | Sebagian: pembuatan kunci dan status SSH terlihat; login kunci belum terbukti |
| [04](labs/04-firewall-configuration/README.md) | Firewall dan akses | Sebagian: UFW aktif dan port 22 diizinkan; uji konektivitas setelah firewall aktif belum tersedia |

Belum ada lab yang seluruh langkahnya dapat dinyatakan selesai berdasarkan bukti yang tersedia. Catatan praktik masih harus dilengkapi dan diisi sesuai output yang benar-benar terlihat di screenshot.

## Daftar Screenshot yang Ditemukan

- `labs/01-network-configuration/evidence/01-network-interface.png`
- `labs/01-network-configuration/evidence/02-network-gateway-dns.png`
- `labs/02-connectivity-diagnostics/evidence/03-connectivity-test.png`
- `labs/02-connectivity-diagnostics/evidence/04-connectivity-diagnostics.png`
- `labs/03-ssh-key-authentication/evidence/05-ssh-key-generation.png`
- `labs/03-ssh-key-authentication/evidence/06-ssh-key-login.png`
- `labs/04-firewall-configuration/evidence/07-firewall-rules.png`
- `labs/04-firewall-configuration/evidence/08-firewall-verification.png`

## Bukti yang Belum Tersedia

- Output `ip route` untuk memastikan default gateway pada Lab 01.
- Verifikasi status layanan aplikasi pada Lab 02 dengan `curl` atau uji akses yang jelas.
- Bukti login SSH menggunakan private key pada Lab 03.
- Hasil uji konektivitas setelah firewall aktif pada Lab 04.

## Keamanan dan Repository

Tidak ditemukan password, private key, token, atau file rahasia di project ini. File public key yang terlihat pada screenshot tidak dipakai sebagai bukti akses yang terautentikasi. Semua dokumentasi dibuat dengan prinsip tidak mengarang hasil praktik.

## Skrip Informasi Jaringan

Jalankan perintah berikut di Debian untuk menampilkan informasi dasar jaringan:

```bash
bash scripts/network-info.sh
```

Skrip hanya membaca status interface, route, dan resolver dan tidak mengubah konfigurasi sistem.