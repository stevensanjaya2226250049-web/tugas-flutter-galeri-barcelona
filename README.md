# Tugas Flutter — Galeri Foto: Jalan di Barcelona

Aplikasi Flutter sederhana yang mengikuti contoh pada slide tugas. Aplikasi memakai `AppBar`, `Image.network`, `Column`, `Row`, `Icon`, `Text`, `Divider`, dan widget tata letak lainnya.

## Isi aplikasi
- AppBar bertuliskan **Galeri Foto**
- Gambar dari `https://picsum.photos/id/88/300/200`
- Judul **Jalan di Barcelona**
- Informasi lokasi dan tanggal publikasi dengan ikon `place` dan `calendar_month`
- Deskripsi sesuai materi tugas

## Cara menjalankan lewat VS Code

### 1. Siapkan perangkat lunak
1. Install Flutter SDK dan ekstrak ke folder yang mudah ditemukan.
2. Tambahkan folder `flutter/bin` ke PATH Windows.
3. Install Visual Studio Code.
4. Di VS Code, install ekstensi **Flutter** (ekstensi Dart biasanya ikut terpasang).
5. Untuk emulator Android, install Android Studio, Android SDK, lalu buat emulator dari **Device Manager**. Alternatifnya gunakan HP Android dengan USB debugging aktif.

### 2. Periksa instalasi
Buka terminal VS Code melalui **Terminal > New Terminal**, lalu jalankan:
```bash
flutter doctor
```
Ikuti petunjuk yang ditandai belum lengkap, terutama Android toolchain. Terima lisensi Android jika diminta:
```bash
flutter doctor --android-licenses
```

### 3. Buat proyek Flutter
Buka terminal di folder tempat Anda menyimpan proyek, lalu jalankan:
```bash
flutter create galeri_barcelona
```
Salin folder `lib` dari paket tugas ini ke folder `galeri_barcelona`, dan pilih **Replace** jika ditanya apakah `main.dart` akan diganti. Atau salin isi `lib/main.dart` ini ke `galeri_barcelona/lib/main.dart`.

### 4. Jalankan aplikasi
1. Buka folder `galeri_barcelona` di VS Code (**File > Open Folder**).
2. Jalankan emulator Android terlebih dahulu atau sambungkan HP.
3. Pilih perangkat di bagian bawah VS Code.
4. Buka `lib/main.dart`.
5. Tekan `F5`, atau jalankan di terminal:
```bash
flutter pub get
flutter run
```
Aplikasi membutuhkan internet untuk mengambil gambar. Jika gambar tidak muncul, periksa koneksi internet dan coba lagi.

## Cara upload ke GitHub dari VS Code

### A. Buat repository di GitHub
1. Masuk ke https://github.com dan login.
2. Klik tombol **+** > **New repository**.
3. Isi nama repository, misalnya `tugas-flutter-galeri-barcelona`.
4. Pilih **Public** sesuai instruksi pengumpulan.
5. Klik **Create repository**. Untuk cara paling mudah, jangan centang opsi membuat README karena README sudah ada di proyek lokal.

### B. Upload melalui terminal VS Code
Pastikan terminal berada di dalam folder proyek `galeri_barcelona`, bukan folder di luarnya. Jalankan satu per satu:
```bash
git init
git add .
git commit -m "Tugas Flutter Galeri Foto"
git branch -M main
git remote add origin https://github.com/USERNAME/tugas-flutter-galeri-barcelona.git
git push -u origin main
```
Ganti `USERNAME` dengan username GitHub Anda dan sesuaikan URL dengan repository yang benar-benar dibuat. Jika Git meminta identitas, atur:
```bash
git config --global user.name "Nama Anda"
git config --global user.email "email-github-anda"
```
Lalu ulangi `git commit` dan `git push`. Login/otorisasi GitHub mungkin akan terbuka di browser.

### C. Jika repository Git sudah pernah diinisialisasi
Jika muncul pesan `remote origin already exists`, jalankan:
```bash
git remote -v
git remote set-url origin https://github.com/USERNAME/tugas-flutter-galeri-barcelona.git
git push -u origin main
```

### D. Cek hasil upload
Refresh halaman repository GitHub. Pastikan file `lib/main.dart` dan `README.md` terlihat dan repository berstatus **Public**. Untuk perubahan berikutnya:
```bash
git add .
git commit -m "Perbaikan tampilan aplikasi"
git push
```

## Bukti tugas PDF
Materi meminta PDF berisi tangkapan layar kode program, tampilan emulator, dan salinan kode program.
1. Jalankan aplikasi dan ambil screenshot tampilan emulator yang benar-benar berjalan.
2. Ambil screenshot kode `lib/main.dart` di VS Code.
3. Buat dokumen Word/Google Docs, masukkan identitas, screenshot kode, screenshot aplikasi, dan salinan kode program.
4. Ekspor/simpan dokumen sebagai PDF.
5. Kumpulkan PDF dan tautan repository GitHub Public sesuai petunjuk dosen.

Jangan mengklaim aplikasi sudah dijalankan jika belum dites pada emulator/perangkat Anda.

## Screenshot emulator (instruksi tambahan dosen)
1. Jalankan aplikasi pada emulator.
2. Ambil screenshot hasil aplikasi yang benar-benar berjalan.
3. Simpan screenshot dengan nama `hasil-emulator.png` di folder `images/`.
4. Setelah itu jalankan:
```bash
git add images/hasil-emulator.png
git commit -m "Tambah screenshot hasil emulator"
git push
```
Folder `images/` sudah disediakan. Git tidak menyimpan folder kosong, jadi file screenshot perlu ditambahkan ke folder agar folder itu muncul di GitHub.
