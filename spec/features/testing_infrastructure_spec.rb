feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    sign_in_and_play
    expect(page).to have_content ""
  end
end
