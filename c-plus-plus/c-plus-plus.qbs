import qbs

Project {
  minimumQbsVersion: "1.7.1"

  CppApplication {
    consoleApplication: true
    files: [
          "SiralamaAlgoritmalari/siralama_algoritmalari.cpp",
          "SiralamaAlgoritmalari/siralama_algoritmalari.h",
          "main.cpp",
      ]

    Group {     // Properties for the produced executable
      fileTagsFilter: product.type
      qbs.install: true
    }
  }
}
