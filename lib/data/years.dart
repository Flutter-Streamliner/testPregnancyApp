abstract class Years {

  static List<String> getYears() {
    List<String> years = [];
    // Using a for loop to iterate through the years from 1900 to 2100
    for (int year = 1950; year <= 2100; year++) {
      years.add(year.toString());
    }
    return years;
  }
}