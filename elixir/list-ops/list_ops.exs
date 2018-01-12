defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l) do
    count_me(l)
  end

  def count_me([head|tail]) do
    count_me(tail) + 1
  end

  def count_me([]) do
    0
  end

  @spec reverse(list) :: list
  def reverse(l) do
   reverse_me(l, [])
  end

  def reverse_me([], acc) do
    acc
  end

  def reverse_me([head|tail], acc) do
    reverse_me(tail, [head | acc])
  end


  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    map_me(l, f)
  end

  def map_me([], f) do
   []
  end

  def map_me([head|tail], f) do
   [f.(head)|map_me(tail, f)]
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    filter_me(l,f)
  end

  def filter_me([], f) do
    []
  end

  def filter_me([head|tail], f) do
    if f.(head) do
        [head|filter_me(tail, f)]
      else
        filter_me(tail, f)
    end

  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do
    reduce_me(l, acc, f)
  end

  def reduce_me([], acc, f) do
    acc
  end

  def reduce_me([head|tail], acc, f) do
    reduce_me(tail, f.(head, acc) , f)
  end

  @spec append(list, list) :: list
  def append(a, b) do
    append_me(a,b)
  end

  def append_me([],[]) do
    []
  end

  def append_me(a,[]) do
    a
  end

  def append_me([],b) do
    b
  end

  def append_me([a],b) do
    [a|b]
  end

  def append_me([head|tail],b) do
    [head|append_me(tail, b)]
  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do
    concat_me(ll)
  end

  def concat_me([]) do
    []
  end

  def concat_me([head|tail]) do
    append_me(concat_me(head) , concat_me(tail))
  end

  def concat_me(l) do
    [l]
  end
end
