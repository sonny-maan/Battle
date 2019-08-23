def sign_in_and_play
  visit ('/')
  fill_in :name_p1, with: 'Sonny'
  fill_in :name_p2, with: 'Raj'
  click_button 'Submit'
end
