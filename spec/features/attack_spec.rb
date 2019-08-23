# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attacking' do
  scenario 'P1 attacking P2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Sonny attacked Raj'
  end

end
