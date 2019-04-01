require "application_system_test_case"

class DescricaosTest < ApplicationSystemTestCase
  setup do
    @descricao = descricaos(:one)
  end

  test "visiting the index" do
    visit descricaos_url
    assert_selector "h1", text: "Descricaos"
  end

  test "creating a Descricao" do
    visit descricaos_url
    click_on "New Descricao"

    fill_in "Departamento", with: @descricao.departamento
    fill_in "User", with: @descricao.user_id
    click_on "Create Descricao"

    assert_text "Descricao was successfully created"
    click_on "Back"
  end

  test "updating a Descricao" do
    visit descricaos_url
    click_on "Edit", match: :first

    fill_in "Departamento", with: @descricao.departamento
    fill_in "User", with: @descricao.user_id
    click_on "Update Descricao"

    assert_text "Descricao was successfully updated"
    click_on "Back"
  end

  test "destroying a Descricao" do
    visit descricaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Descricao was successfully destroyed"
  end
end
