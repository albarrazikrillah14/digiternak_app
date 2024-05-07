String formatDateString(String dateString) {
  List<String> parts = dateString.split('/');
  if (parts.length == 3) {
    String day = parts[0];
    String month = parts[1];
    String year = parts[2];
    return '$year-$month-$day';
  } else {
    return dateString;
  }
}

String maintenanceFormatter(int id) {
  switch (id) {
    case 1:
      return "Kandang";
    case 2:
      return "Gembala";
    case 3:
      return "Campuran";
    default:
      return "Tidak diketahui";
  }
}

String breedOfLivestockFormatter(int id) {
  switch (id) {
    case 1:
      return "Bali";
    case 2:
      return "Madura";
    default:
      return "Tidak diketahui";
  }
}

String ownershipStatusFormatter(int id) {
  switch (id) {
    case 1:
      return "Milik Sendiri";
    case 2:
      return "Milik Kelompok";
    case 3:
      return "Titipan";
    default:
      return "Tidak diketahui";
  }
}

String purposeFormatter(int id) {
  switch (id) {
    case 1:
      return "Indukan";
    case 2:
      return "Penggemukan";
    case 3:
      return "Tabungan";
    default:
      return "Belum Tau";
  }
}

String reproductionFormatter(int id) {
  if (id == 1) {
    return "Tidak Bunting";
  } else if (id == 2) {
    return "Bunting < 1 Bulan";
  } else if (id > 2 && id < 18) {
    return "Bunting ${id - 2} Bulan";
  } else {
    return "Tidak diketahui";
  }
}

String sourceFormatter(int id) {
  switch (id) {
    case 1:
      return "Sejak Lahir";
    case 2:
      return "Bantuan Pemerintah";
    case 3:
      return "Beli";
    case 4:
      return "Beli dari Dalam Kelompok";
    case 5:
      return "Beli dari Luar Kelompok";
    case 6:
      return "Inseminasi Buatan";
    case 7:
      return "Kawin Alam";
    default:
      return "Tidak Tau";
  }
}

String typeOfLivestockFormatter(int id) {
  switch (id) {
    case 1:
      return "Sapi";
    case 2:
      return "Kambing";
    default:
      return "Tidak tau";
  }
}
