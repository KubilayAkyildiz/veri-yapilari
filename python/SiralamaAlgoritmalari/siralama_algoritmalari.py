class SiralamaAlgoritmalari:
    def __init__(self):
        pass

    def _partition(self, array, low, high):  # quick sort için
        pivot = array[high]
        i = low - 1

        for j in range(low, high):
            if array[j] < pivot:
                i += 1
                array[j], array[i] = array[i], array[j]
        array[i + 1], array[high] = array[high], array[i + 1]

        return i + 1

    @staticmethod
    def bubble_sort(array, size):
        if size > 1:
            for i in range(size):
                for j in range(size - i - 1):
                    if array[j] > array[j + 1]:
                        array[j], array[j + 1] = array[j + 1], array[j]

    @staticmethod
    def selection_sort(array, size):
        if size > 1:
            for i in range(size - 1):
                min = i
                for j in range(i + 1, size):
                    if array[j] < array[min]:
                        min = j
                array[i], array[min] = array[min], array[i]

    @staticmethod
    def insertion_sort(array, size):
        if size > 1:
            for i in range(1, size):
                key = array[i]
                j = i - 1
                while (j >= 0) and (array[j] > key):
                    array[j + 1] = array[j]
                    j -= 1
                array[j + 1] = key

    @classmethod
    def quick_sort(cls, array, low, high):
        if low < high:
            partitionIndex = cls._partition(array, low, high)
            cls.quick_sort(array, low, partitionIndex - 1)
            cls.quick_sort(array, partitionIndex + 1, high)
