# Catatan Praktik — Lab 02

## Identitas dan Waktu

- Nama: 
- Kelas: 
- Tanggal: 
- Mesin/lingkungan praktik: Debian GNU/Linux 13

## Perintah yang Terlihat pada Screenshot

```bash
ping -c 1 127.0.0.1
ping -c 1 10.0.2.15
ping -c 1 8.8.8.8
getent hosts debian.org
curl -I https://debian.org
```

## Output yang Terlihat pada Screenshot

```text
root@debian13:~# ping -c 1 127.0.0.1
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.100 ms

root@debian13:~# ping -c 1 10.0.2.15
PING 10.0.2.15 (10.0.2.15) 56(84) bytes of data.
64 bytes from 10.0.2.15: icmp_seq=1 ttl=64 time=0.082 ms

root@debian13:~# ping -c 1 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=255 time=24.2 ms

root@debian13:~# getent hosts debian.org
2a04:4e42:200:... debian.org
2a04:4e42:400:... debian.org
2a04:4e42:600:... debian.org

root@debian13:~# curl -I https://debian.org
```

## Refleksi

- Konektivitas dasar ke loopback, IP lokal, dan server DNS publik terlihat baik.
- Resolvasi nama ke debian.org juga terlihat berhasil.
- Gateway default dan hasil akses layanan HTTP yang lengkap tidak terlihat, jadi belum dapat dikatakan sebagai bukti final.
- Keraguan tetap ada pada tahap route dan uji layanan aplikasi.

## Screenshot

- [03-connectivity-test.png](03-connectivity-test.png)
- [04-connectivity-diagnostics.png](04-connectivity-diagnostics.png)

## Bukti Belum Tersedia

- Output `ip route` untuk memastikan gateway.
- Status HTTP/Sertifikat yang jelas dari `curl`.