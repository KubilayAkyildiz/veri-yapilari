#include "siralama_algoritmalari.h"

void SiralamaAlgoritmalari::_swap(int& n1, int& n2)
{
  int tmp = n1;
  n1 = n2;
  n2 = tmp;
}

int SiralamaAlgoritmalari::_partition(int array[], int low, int high)
{
  int pivot = array[high], i = low - 1;

  for (int j = low; j < high; j++)
  {
    if (array[j] < pivot)
      _swap(array[j], array[++i]);
  }
  _swap(array[i + 1], array[high]);

  return i + 1;
}

SiralamaAlgoritmalari::SiralamaAlgoritmalari()
{
}

void SiralamaAlgoritmalari::bubble_sort(int array[], int size)
{
  if (size > 1)
  {
    for (int i = 0; i < size; i++)
    {
      for (int j = 0; j < size - i - 1; j++)
      {
        if (array[j] > array[j + 1])
          _swap(array[j], array[j + 1]);
      }
    }
  }
}

void SiralamaAlgoritmalari::selection_sort(int array[], int size)
{
  if (size > 1)
  {
    for (int i = 0; i < size - 1; i++)
    {
      int min = i;
      for (int j = i + 1; j < size; j++)
      {
        if (array[j] < array[min])
          min = j;
      }
      _swap(array[min], array[i]);
    }
  }
}

void SiralamaAlgoritmalari::insertion_sort(int array[], int size)
{
  if (size > 1)
  {
    int key, j;
    for (int i = 1; i < size; i++)
    {
      key = array[i];
      j = i - 1;

      while (j >= 0 && array[j] > key)
      {
        array[j + 1] = array[j];
        --j;
      }
      array[j + 1] = key;
    }
  }
}

void SiralamaAlgoritmalari::quick_sort(int array[], int low, int high)
{
  if (low < high)
  {
    int partition_index = _partition(array, low, high);
    quick_sort(array, low, partition_index - 1);
    quick_sort(array, partition_index + 1, high);
  }
}
