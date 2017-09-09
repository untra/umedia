defmodule Umedia.Media do
  @moduledoc """
  The Media context.
  """

  import Ecto.Query, warn: false
  alias Umedia.Repo

  alias Umedia.Media.Franchise

  @doc """
  Returns the list of franchises.

  ## Examples

      iex> list_franchises()
      [%Franchise{}, ...]

  """
  def list_franchises do
    Repo.all(Franchise)
  end

  @doc """
  Gets a single franchise.

  Raises `Ecto.NoResultsError` if the Franchise does not exist.

  ## Examples

      iex> get_franchise!(123)
      %Franchise{}

      iex> get_franchise!(456)
      ** (Ecto.NoResultsError)

  """
  def get_franchise!(id), do: Repo.get!(Franchise, id)

  @doc """
  Creates a franchise.

  ## Examples

      iex> create_franchise(%{field: value})
      {:ok, %Franchise{}}

      iex> create_franchise(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_franchise(attrs \\ %{}) do
    %Franchise{}
    |> Franchise.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a franchise.

  ## Examples

      iex> update_franchise(franchise, %{field: new_value})
      {:ok, %Franchise{}}

      iex> update_franchise(franchise, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_franchise(%Franchise{} = franchise, attrs) do
    franchise
    |> Franchise.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Franchise.

  ## Examples

      iex> delete_franchise(franchise)
      {:ok, %Franchise{}}

      iex> delete_franchise(franchise)
      {:error, %Ecto.Changeset{}}

  """
  def delete_franchise(%Franchise{} = franchise) do
    Repo.delete(franchise)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking franchise changes.

  ## Examples

      iex> change_franchise(franchise)
      %Ecto.Changeset{source: %Franchise{}}

  """
  def change_franchise(%Franchise{} = franchise) do
    Franchise.changeset(franchise, %{})
  end

  alias Umedia.Media.Show

  @doc """
  Returns the list of shows.

  ## Examples

      iex> list_shows()
      [%Show{}, ...]

  """
  def list_shows do
    Repo.all(Show)
  end

  @doc """
  Gets a single show.

  Raises `Ecto.NoResultsError` if the Show does not exist.

  ## Examples

      iex> get_show!(123)
      %Show{}

      iex> get_show!(456)
      ** (Ecto.NoResultsError)

  """
  def get_show!(id), do: Repo.get!(Show, id)

  @doc """
  Creates a show.

  ## Examples

      iex> create_show(%{field: value})
      {:ok, %Show{}}

      iex> create_show(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_show(attrs \\ %{}) do
    %Show{}
    |> Show.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a show.

  ## Examples

      iex> update_show(show, %{field: new_value})
      {:ok, %Show{}}

      iex> update_show(show, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_show(%Show{} = show, attrs) do
    show
    |> Show.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Show.

  ## Examples

      iex> delete_show(show)
      {:ok, %Show{}}

      iex> delete_show(show)
      {:error, %Ecto.Changeset{}}

  """
  def delete_show(%Show{} = show) do
    Repo.delete(show)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking show changes.

  ## Examples

      iex> change_show(show)
      %Ecto.Changeset{source: %Show{}}

  """
  def change_show(%Show{} = show) do
    Show.changeset(show, %{})
  end
end
