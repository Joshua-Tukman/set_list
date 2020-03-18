require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
  it "can see all song titles and play count" do
    song_1 = Song.create(title: "Standing on the Moon",
                          length: 208,
                          play_count: 1020300)
    song_2 = Song.create(title: "Good Morning Little School Girl",
                          length: 312,
                          play_count: 1874522)


    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
  end
end
