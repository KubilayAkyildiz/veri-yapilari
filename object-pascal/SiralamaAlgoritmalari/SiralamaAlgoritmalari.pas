unit SiralamaAlgoritmalari;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

interface

type
  TSiralamaAlgoritmalari = class
  private
    class procedure _swap(var n1, n2: Integer);
    class function _partition(var arr: array of Integer; low: Integer; high: Integer): Integer; // quick sort için
  public
    class procedure bubbleSort(var arr: array of Integer; size: Integer);
    class procedure selectionSort(var arr: array of Integer; size: Integer);
    class procedure insertionSort(var arr: array of Integer; size: Integer);
    class procedure quickSort(var arr: array of Integer; low: Integer; high: Integer);
  end;

implementation

class procedure TSiralamaAlgoritmalari._swap(var n1, n2: Integer);
var
  tmp : Integer;
begin
  tmp := n1;
  n1 := n2;
  n2 := tmp;
end;

class function TSiralamaAlgoritmalari._partition(var arr: array of Integer; low: Integer; high: Integer): Integer;
var
  pivot, i, j : Integer;
begin
  pivot := arr[high];
  i := low - 1;

  for j := low to high - 1 do
  begin
    if arr[j] < pivot then
    begin
      i := i + 1;
      _swap(arr[j], arr[i]);
    end;
  end;
  _swap(arr[i + 1], arr[high]);

  Result := i + 1;
end;

class procedure TSiralamaAlgoritmalari.bubbleSort(var arr: array of Integer; size: Integer);
var
  i, j : Integer;
begin
  if size > 1 then
  begin
    for i := 0 to size - 1 do
    begin
      for j := 0 to size - i - 2 do
      begin
        if arr[j] > arr[j + 1] then
          _swap(arr[j], arr[j + 1]);
      end;
    end;
  end;
end;

class procedure TSiralamaAlgoritmalari.selectionSort(var arr: array of Integer; size: Integer);
var
  i, j, min : Integer;
begin
  if size > 1 then
  begin
    for i := 0 to size - 2 do
    begin
      min := i;
      for j := i + 1 to size - 1 do
      begin
        if arr[j] < arr[min] then
          min := j;
      end;
      _swap(arr[min], arr[i]);
    end;
  end;
end;

class procedure TSiralamaAlgoritmalari.insertionSort(var arr: array of Integer; size: Integer);
var
  i, j, key : Integer;
begin
  if size > 1 then
  begin
    for i := 1 to size - 1 do
    begin
      key := arr[i];
      j := i - 1;
      while (j >= 0) and (arr[j] > key) do
      begin
        arr[j + 1] := arr[j];
        j := j - 1;
      end;
      arr[j + 1] := key;
    end;
  end;
end;

class procedure TSiralamaAlgoritmalari.quickSort(var arr: array of Integer; low: Integer; high: Integer);
var
  partitionIndex : Integer;
begin
  if low < high then
  begin
    partitionIndex := _partition(arr, low, high);
    quickSort(arr, low, partitionIndex - 1);
    quickSort(arr, partitionIndex + 1, high);
  end;
end;

end.
