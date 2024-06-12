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

String formatTanggal(String input) {
  List<String> bulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  // Split the date and time parts
  List<String> dateTimeSplit = input.split(' ');
  String datePart = dateTimeSplit[0];
  String timePart = dateTimeSplit.length > 1 ? dateTimeSplit[1] : '';

  // Split the date part into components
  List<String> tanggalSplit = datePart.split('-');
  int hari = int.parse(tanggalSplit[2]);
  int bulanIndex = int.parse(tanggalSplit[1]) - 1;
  String tahun = tanggalSplit[0];

  // Format the date part
  String formattedDate = "$hari ${bulan[bulanIndex]} $tahun";

  // Return the formatted date with time if time part is present
  if (timePart.isNotEmpty) {
    return "$formattedDate $timePart";
  } else {
    return formattedDate;
  }
}

String safeSubstring(String text, int startIndex, int endIndex) {
  if (endIndex > text.length) {
    endIndex = text.length;
  }
  return "${text.substring(startIndex, endIndex)}...";
}

String formatCurrency(double amount) {
  String formattedAmount = amount.toStringAsFixed(0).replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]}.',
      );
  return 'Rp $formattedAmount';
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
