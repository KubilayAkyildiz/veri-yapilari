#ifndef SIRALAMA_ALGORITMALARI_H
#define SIRALAMA_ALGORITMALARI_H

class SiralamaAlgoritmalari
{
private:
  static void _swap(int& n1, int& n2);
  static int _partition(int array[], int low, int high); // quick sort için
public:
  SiralamaAlgoritmalari();
  static void bubble_sort(int array[], int size);
  static void selection_sort(int array[], int size);
  static void insertion_sort(int array[], int size);
  static void quick_sort(int array[], int low, int high);
};

#endif // SIRALAMA_ALGORITMALARI_H
