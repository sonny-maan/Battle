# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Viewing Hitpoints' do
  scenario 'See P2 Hitpoints' do
    visit ('/')
    fill_in :name_p1, with: 'Sonny'
    fill_in :name_p2, with: 'Raj'
    click_button 'Submit'
    expect(page).to have_content 'Raj: 60HP'
  end
end
