# Catatan Praktik — Lab 04

## Identitas dan Waktu

- Nama: 
- Kelas: 
- Tanggal: 
- Mesin/lingkungan praktik: Debian GNU/Linux 13

## Perintah yang Terlihat pada Screenshot

```bash
ufw version
ufw status verbose
ufw allow 22/tcp
ufw default deny incoming
ufw default allow outgoing
ufw enable
ufw status numbered
```

## Output yang Terlihat pada Screenshot

```text
root@debian13:~# ufw version
ufw 0.36

root@debian13:~# ufw status verbose
Status: inactive

root@debian13:~# ufw allow 22/tcp
Rules updated

root@debian13:~# ufw default deny incoming
Default incoming policy changed to 'deny'

root@debian13:~# ufw default allow outgoing
Default outgoing policy changed to 'allow'

root@debian13:~# ufw enable
Firewall is active and enabled on system startup

root@debian13:~# ufw status numbered
Status: active
[ 1] 22/tcp ALLOW IN Anywhere
```

## Refleksi

- UFW tersedia dan diaktifkan dengan port 22 yang diizinkan.
- Kebijakan default deny incoming dipakai untuk membatasi akses masuk.
- Belum ada bukti uji konektivitas setelah firewall aktif, jadi konektivitas end-to-end belum dibuktikan.
- Praktik ini harus selalu diikuti dengan verifikasi bahwa akses yang dibutuhkan tetap berjalan.

## Screenshot

- [07-firewall-rules.png](07-firewall-rules.png)
- [08-firewall-verification.png](08-firewall-verification.png)

## Bukti Belum Tersedia

- Uji konektivitas yang dilakukan setelah firewall diaktifkan.