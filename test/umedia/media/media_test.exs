defmodule Umedia.MediaTest do
  use Umedia.DataCase

  alias Umedia.Media

  describe "franchises" do
    alias Umedia.Media.Franchise

    @valid_attrs %{franchise_name: "some franchise_name"}
    @update_attrs %{franchise_name: "some updated franchise_name"}
    @invalid_attrs %{franchise_name: nil}

    def franchise_fixture(attrs \\ %{}) do
      {:ok, franchise} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Media.create_franchise()

      franchise
    end

    test "list_franchises/0 returns all franchises" do
      franchise = franchise_fixture()
      assert Media.list_franchises() == [franchise]
    end

    test "get_franchise!/1 returns the franchise with given id" do
      franchise = franchise_fixture()
      assert Media.get_franchise!(franchise.id) == franchise
    end

    test "create_franchise/1 with valid data creates a franchise" do
      assert {:ok, %Franchise{} = franchise} = Media.create_franchise(@valid_attrs)
      assert franchise.franchise_name == "some franchise_name"
    end

    test "create_franchise/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Media.create_franchise(@invalid_attrs)
    end

    test "update_franchise/2 with valid data updates the franchise" do
      franchise = franchise_fixture()
      assert {:ok, franchise} = Media.update_franchise(franchise, @update_attrs)
      assert %Franchise{} = franchise
      assert franchise.franchise_name == "some updated franchise_name"
    end

    test "update_franchise/2 with invalid data returns error changeset" do
      franchise = franchise_fixture()
      assert {:error, %Ecto.Changeset{}} = Media.update_franchise(franchise, @invalid_attrs)
      assert franchise == Media.get_franchise!(franchise.id)
    end

    test "delete_franchise/1 deletes the franchise" do
      franchise = franchise_fixture()
      assert {:ok, %Franchise{}} = Media.delete_franchise(franchise)
      assert_raise Ecto.NoResultsError, fn -> Media.get_franchise!(franchise.id) end
    end

    test "change_franchise/1 returns a franchise changeset" do
      franchise = franchise_fixture()
      assert %Ecto.Changeset{} = Media.change_franchise(franchise)
    end
  end

  describe "shows" do
    alias Umedia.Media.Show

    @valid_attrs %{show_name: "some show_name"}
    @update_attrs %{show_name: "some updated show_name"}
    @invalid_attrs %{show_name: nil}

    def show_fixture(attrs \\ %{}) do
      {:ok, show} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Media.create_show()

      show
    end

    test "list_shows/0 returns all shows" do
      show = show_fixture()
      assert Media.list_shows() == [show]
    end

    test "get_show!/1 returns the show with given id" do
      show = show_fixture()
      assert Media.get_show!(show.id) == show
    end

    test "create_show/1 with valid data creates a show" do
      assert {:ok, %Show{} = show} = Media.create_show(@valid_attrs)
      assert show.show_name == "some show_name"
    end

    test "create_show/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Media.create_show(@invalid_attrs)
    end

    test "update_show/2 with valid data updates the show" do
      show = show_fixture()
      assert {:ok, show} = Media.update_show(show, @update_attrs)
      assert %Show{} = show
      assert show.show_name == "some updated show_name"
    end

    test "update_show/2 with invalid data returns error changeset" do
      show = show_fixture()
      assert {:error, %Ecto.Changeset{}} = Media.update_show(show, @invalid_attrs)
      assert show == Media.get_show!(show.id)
    end

    test "delete_show/1 deletes the show" do
      show = show_fixture()
      assert {:ok, %Show{}} = Media.delete_show(show)
      assert_raise Ecto.NoResultsError, fn -> Media.get_show!(show.id) end
    end

    test "change_show/1 returns a show changeset" do
      show = show_fixture()
      assert %Ecto.Changeset{} = Media.change_show(show)
    end
  end
end
