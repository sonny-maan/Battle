# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Entering Names' do
  scenario 'Submitting Names' do
    visit ('/')
    fill_in :name_p1, with: 'Sonny'
    fill_in :name_p2, with: 'Raj'
    click_button'Submit'
    expect(page).to have_content 'Sonny vs Raj'
  end
end
