# Catatan Praktik — Lab 03

## Identitas dan Waktu

- Nama: 
- Kelas: 
- Tanggal: 
- Komputer klien: Windows PowerShell / Linux terminal
- Server/akun uji: Debian server

## Perintah yang Terlihat pada Screenshot

```bash
ssh-keygen -t ed25519 -C "linux-practice"
systemctl status ssh --no-pager
```

## Output yang Terlihat pada Screenshot

```text
PS C:\Users\User> ssh-keygen -t ed25519 -C "linux-practice"
Generating public/private ed25519 key pair.
Your public key has been saved in C:\Users\User\.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:...

root@debian13:~# systemctl status ssh --no-pager
* ssh.service - OpenBSD Secure Shell server
Loaded: loaded (/usr/lib/systemd/system/ssh.service; enabled; preset: enabled)
Active: active (running) since ...
```

## Refleksi

- Public key terlihat di file `.pub` dan fingerprint-nya dapat ditampilkan.
- Private key tidak ditampilkan dan tidak disalin ke repo.
- Layanan SSH aktif dan key pair dibuat, tetapi login menggunakan private key tidak terbukti ada pada screenshot yang tersedia.
- Karena login dengan kunci belum dibuktikan, perubahan pembatasan login tidak dapat dianggap selesai.

## Screenshot

- [05-ssh-key-generation.png](05-ssh-key-generation.png)
- [06-ssh-key-login.png](06-ssh-key-login.png)

## Bukti Belum Tersedia

- Login SSH menggunakan private key dari komputer klien ke server.