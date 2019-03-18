artists = []

artists.push Artist.create(name: "Halestorm", formation_year: 1997, origin: "Red Lion, PA", album_count: 4)
artists.push Artist.create(name: "The Glitch Mob", formation_year: 2006, origin: "Los Angeles, CA", album_count: 5)
artists.push Artist.create(name: "The Heavy", formation_year: 2007, origin: "Bath, Somerset, England", album_count: 5)
artists.push Artist.create(name: "AWOLNATION", formation_year: 2009, origin: "Los Angeles, CA", album_count: 3)
artists.push Artist.create(name: "Chevelle", formation_year: 1995, origin: "Grayslake, IL", album_count: 8)
artists.push Artist.create(name: "Incubus", formation_year: 1991, origin: "Calabasas, CA", album_count: 8)
artists.push Artist.create(name: "KoЯn", formation_year: 1993, origin: "Bakersfield, CA", album_count: 12)
artists.push Artist.create(name: "Lacuna Coil", formation_year: 1994, origin: "Milan, Italy", album_count: 8)
artists.push Artist.create(name: "Linkin Park", formation_year: 1996, origin: "Agoura Hills, CA", album_count: 7)
artists.push Artist.create(name: "Muse", formation_year: 1994, origin: "Teignmouth, Devon, England", album_count: 8)
artists.push Artist.create(name: "The Offspring", formation_year: 1984, origin: "Garden Grove, California", album_count: 9)
artists.push Artist.create(name: "Project 86", formation_year: 1996, origin: "Orange County, CA", album_count: 10)
artists.push Artist.create(name: "Red Hot Chili Peppers", formation_year: 1983, origin: "Los Angeles, CA", album_count: 11)
artists.push Artist.create(name: "System of a Down", formation_year: 1994, origin: "Glendale, CA", album_count: 5)
artists.push Artist.create(name: "Tool", formation_year: 1990, origin: "Los Angeles, CA", album_count: 4)
artists.push Artist.create(name: "VNV Nation", formation_year: 1990, origin: "London, England", album_count: 11)

album_details = {
  "Halestorm" => [
    {
      name: "Vicious",
      release_date: "2018-07-27",
      track_count: 12,
      duration: "43:26"
    },
    {
      name: "Into The Wild Life",
      release_date: "2015-04-14",
      track_count: 13,
      duration: "29:31"
    },
    {
      name: "The Strange Case Of...",
      release_date: "2012-04-10",
      track_count: 12,
      duration: "40:56"
    },
    {
      name: "Halestorm",
      release_date: "2009-04-28",
      track_count: 11,
      duration: "37:03"
    }
  ],
  "The Glitch Mob" => [
    {
      name: "See Without Eyes",
      release_date: "2018-05-04",
      track_count: 11,
      duration: "49:47"
    },
    {
      name: "Love Death Immortality Remixes",
      release_date: "2015-02-24",
      track_count: 18,
      duration: "92:07"
    },
    {
      name: "Love Death Immortality",
      release_date: "2014-02-11",
      track_count: 10,
      duration: "52:07"
    },
    {
      name: "Drink The Sea - The Remixes",
      release_date: "2011-01-13",
      track_count: 12,
      duration: "66:20"
    },
    {
      name: "Drink the Sea",
      release_date: "2010-05-05",
      track_count: 10,
      duration: "59:31"
    }
  ],
  "The Heavy" => [
    {
      name: "Sons",
      release_date: "2019-05-17",
      track_count: 11,
      duration: "34:47"
    },
    {
      name: "Hurt & The Merciless",
      release_date: "2016-04-01",
      track_count: 13,
      duration: "43:59"
    },
    {
      name: "The Glorious Dead",
      release_date: "2012-08-20",
      track_count: 10,
      duration: "39:17"
    },
    {
      name: "The House That Dirt Built",
      release_date: "2009-10-13",
      track_count: 11,
      duration: "38:06"
    },
    {
      name: "Great Vengeance & Furious Fire",
      release_date: "2007-09-17",
      track_count: 10,
      duration: "33:36"
    }
  ],
  "AWOLNATION" => [
    {
      name: "Megalithic Symphony",
      release_date: "2011-03-15",
      track_count: 14,
      duration: "52:52"
    },
    {
      name: "RUN",
      release_date: "2015-03-17",
      track_count: 14,
      duration: "55:20"
    },
    {
      name: "Here Come The Runts",
      release_date: "2018-02-02",
      track_count: 14,
      duration: "45:43"
    }
  ],
  "Chevelle" => [
    {
      name: "Point #1",
      release_date: "1999-05-04",
      track_count: 11,
      duration: "43:36"
    },
    {
      name: "Wonder What's Next",
      release_date: "2002-10-08",
      track_count: 11,
      duration: "46:10"
    },
    {
      name: "This Type of Thinking (Could Do Us In)",
      release_date: "2004-09-21",
      track_count: 11,
      duration: "46:32"
    },
    {
      name: "Vena Sera",
      release_date: "2007-04-03",
      track_count: 11,
      duration: "44:12"
    },
    {
      name: "Sci-Fi Crimes",
      release_date: "2009-08-31",
      track_count: 11,
      duration: "43:23"
    },
    {
      name: "Hats Off to the Bull",
      release_date: "2011-12-06",
      track_count: 11,
      duration: "42:49"
    },
    {
      name: "La Gárgola",
      release_date: "2014-04-01",
      track_count: 10,
      duration: "47:32"
    },
    {
      name: "The North Corridor",
      release_date: "2016-07-08",
      track_count: 10,
      duration: "44:25"
    }
  ],
  "Incubus" => [
    {
      name: "Fungus Amongus",
      release_date: "1995-11-01",
      track_count: 10,
      duration: "38:13"
    },
    {
      name: "S.C.I.E.N.C.E.",
      release_date: "1997-09-09",
      track_count: 12,
      duration: "55:52"
    },
    {
      name: "Make Yourself",
      release_date: "1999-10-26",
      track_count: 13,
      duration: "48:12"
    },
    {
      name: "Morning View",
      release_date: "2001-10-23",
      track_count: 13,
      duration: "58:29"
    },
    {
      name: "A Crow Left of the Murder...",
      release_date: "2004-02-03",
      track_count: 14,
      duration: "58:35"
    },
    {
      name: "Light Grenades",
      release_date: "2006-11-28",
      track_count: 13,
      duration: "47:39"
    },
    {
      name: "If Not Now, When?",
      release_date: "2011-07-12",
      track_count: 11,
      duration: "50:03"
    },
    {
      name: "8",
      release_date: "2017-04-21",
      track_count: 11,
      duration: "40:12"
    }
  ],
  "KoЯn" => [
    {
      name: "Korn",
      release_date: "1994-10-11",
      track_count: 12,
      duration: "65:45"
    },
    {
      name: "Life Is Peachy",
      release_date: "1996-10-15",
      track_count: 14,
      duration: "48:14"
    },
    {
      name: "Follow the Leader",
      release_date: "1998-08-18",
      track_count: 13,
      duration: "70:08"
    },
    {
      name: "Issues",
      release_date: "1999-11-16",
      track_count: 16,
      duration: "53:16"
    },
    {
      name: "Untouchables",
      release_date: "2002-06-11",
      track_count: 14,
      duration: "65:00"
    },
    {
      name: "Take a Look in the Mirror",
      release_date: "2003-11-21",
      track_count: 13,
      duration: "56:43"
    },
    {
      name: "See You on the Other Side",
      release_date: "2005-12-06",
      track_count: 14,
      duration: "61:01"
    },
    {
      name: "(Untitled)",
      release_date: "2007-07-31",
      track_count: 13,
      duration: "48:47"
    },
    {
      name: "Korn III: Remember Who You Are",
      release_date: "2010-07-13",
      track_count: 11,
      duration: "44:40"
    },
    {
      name: "The Path of Totality",
      release_date: "2011-12-06",
      track_count: 11,
      duration: "37:45"
    },
    {
      name: "The Paradigm Shift",
      release_date: "2013-10-08",
      track_count: 11,
      duration: "42:54"
    },
    {
      name: "The Serenity of Suffering",
      release_date: "2016-10-21",
      track_count: 11,
      duration: "40:34"
    }
  ],
  "Lacuna Coil" => [
    {
      name: "In a Reverie",
      release_date: "1999-06-08",
      track_count: 9,
      duration: "42:27"
    },
    {
      name: "Unleashed Memories",
      release_date: "2001-03-20",
      track_count: 10,
      duration: "49:46"
    },
    {
      name: "Comalies",
      release_date: "2002-10-29",
      track_count: 13,
      duration: "51:44"
    },
    {
      name: "Karmacode",
      release_date: "2006-03-31",
      track_count: 13,
      duration: "47:19"
    },
    {
      name: "Shallow Life",
      release_date: "2009-04-01",
      track_count: 12,
      duration: "44:00"
    },
    {
      name: "Dark Adrenaline",
      release_date: "2012-01-23",
      track_count: 14,
      duration: "45:01"
    },
    {
      name: "Broken Crown Halo",
      release_date: "2014-03-31",
      track_count: 11,
      duration: "47:35"
    },
    {
      name: "Delirium",
      release_date: "2016-05-27",
      track_count: 11,
      duration: "44:38"
    }
  ],
  "Linkin Park" => [
    {
      name: "Hybrid Theory",
      release_date: "2000-10-24",
      track_count: 12,
      duration: "37:45"
    },
    {
      name: "Meteora",
      release_date: "2003-03-25",
      track_count: 13,
      duration: "36:43"
    },
    {
      name: "Minutes to Midnight",
      release_date: "2007-05-14",
      track_count: 12,
      duration: "43:23"
    },
    {
      name: "A Thousand Suns",
      release_date: "2010-09-08",
      track_count: 15,
      duration: "47:48"
    },
    {
      name: "Living Things",
      release_date: "2012-06-20",
      track_count: 12,
      duration: "36:59"
    },
    {
      name: "The Hunting Party",
      release_date: "2014-06-13",
      track_count: 12,
      duration: "45:12"
    },
    {
      name: "One More Light",
      release_date: "2017-05-19",
      track_count: 10,
      duration: "35:19"
    }
  ],
  "Muse" => [
    {
      name: "Showbiz",
      release_date: "1999-09-07",
      track_count: 12,
      duration: "49:36"
    },
    {
      name: "Origin of Symmetry",
      release_date: "2001-06-18",
      track_count: 11,
      duration: "51:41"
    },
    {
      name: "Absolution",
      release_date: "2003-09-15",
      track_count: 14,
      duration: "52:19"
    },
    {
      name: "Black Holes and Revelations",
      release_date: "2006-07-03",
      track_count: 11,
      duration: "45:28"
    },
    {
      name: "The Resistance",
      release_date: "2009-09-11",
      track_count: 11,
      duration: "54:18"
    },
    {
      name: "The 2nd Law",
      release_date: "2012-09-28",
      track_count: 13,
      duration: "53:49"
    },
    {
      name: "Drones",
      release_date: "2015-06-05",
      track_count: 12,
      duration: "52:40"
    },
    {
      name: "Simulation Theory",
      release_date: "2018-11-09",
      track_count: 11,
      duration: "42:12"
    }
  ],
  "The Offspring" => [
    {
      name: "The Offspring",
      release_date: "1989-06-15",
      track_count: 6,
      duration: "31:23"
    },
    {
      name: "Ignition",
      release_date: "1992-10-16",
      track_count: 12,
      duration: "37:24"
    },
    {
      name: "Smash",
      release_date: "1994-04-08",
      track_count: 14,
      duration: "46:47"
    },
    {
      name: "Ixnay on the Hombre",
      release_date: "1997-02-04",
      track_count: 14,
      duration: "42:17"
    },
    {
      name: "Americana",
      release_date: "1998-11-17",
      track_count: 13,
      duration: "46:06"
    },
    {
      name: "Conspiracy of One",
      release_date: "2000-11-14",
      track_count: 13,
      duration: "37:44"
    },
    {
      name: "Splinter",
      release_date: "2003-12-09",
      track_count: 12,
      duration: "32:00"
    },
    {
      name: "Rise and Fall, Rage and Grace",
      release_date: "2008-06-11",
      track_count: 12,
      duration: "43:40"
    },
    {
      name: "Days Go By",
      release_date: "2012-06-25",
      track_count: 12,
      duration: "42:50"
    }
  ],
  "Project 86" => [
    {
      name: "Project 86",
      release_date: "1998-06-16",
      track_count: 10,
      duration: "48:33"
    },
    {
      name: "Drawing Black Lines",
      release_date: "2000-03-21",
      track_count: 12,
      duration: "56:40"
    },
    {
      name: "Truthless Heroes",
      release_date: "2002-09-24",
      track_count: 17,
      duration: "55:33"
    },
    {
      name: "Songs to Burn Your Bridges By",
      release_date: "2003-11-01",
      track_count: 14,
      duration: "52:33"
    },
    {
      name: "...And the Rest Will Follow",
      release_date: "2005-09-27",
      track_count: 12,
      duration: "48:53"
    },
    {
      name: "Rival Factions",
      release_date: "2007-06-19",
      track_count: 10,
      duration: "34:55"
    },
    {
      name: "Picket Fence Cartel",
      release_date: "2009-07-14",
      track_count: 11,
      duration: "39:56"
    },
    {
      name: "Wait for the Siren",
      release_date: "2012-08-21",
      track_count: 13,
      duration: "47:50"
    },
    {
      name: "Knives to the Future",
      release_date: "2014-11-11",
      track_count: 12,
      duration: "40:47"
    },
    {
      name: "Sheep Among Wolves",
      release_date: "2017-12-04",
      track_count: 10,
      duration: "35:05"
    }
  ],
  "Red Hot Chili Peppers" => [
    {
      name: "The Red Hot Chili Peppers",
      release_date: "1984-08-10",
      track_count: 11,
      duration: "32:32"
    },
    {
      name: "Freaky Styley",
      release_date: "1985-08-16",
      track_count: 14,
      duration: "39:46"
    },
    {
      name: "The Uplift Mofo Party Plan",
      release_date: "1987-09-29",
      track_count: 12,
      duration: "37:50"
    },
    {
      name: "Mother's Milk",
      release_date: "1989-08-16",
      track_count: 13,
      duration: "45:02"
    },
    {
      name: "Blood Sugar Sex Magik",
      release_date: "1991-09-24",
      track_count: 17,
      duration: "73:55"
    },
    {
      name: "One Hot Minute",
      release_date: "1995-09-12",
      track_count: 13,
      duration: "61:24"
    },
    {
      name: "Californication",
      release_date: "1999-06-08",
      track_count: 15,
      duration: "56:24"
    },
    {
      name: "By the Way",
      release_date: "2002-07-09",
      track_count: 16,
      duration: "68:46"
    },
    {
      name: "Stadium Arcadium",
      release_date: "2006-05-09",
      track_count: 28,
      duration: "122:27"
    },
    {
      name: "I'm With You",
      release_date: "2011-08-26",
      track_count: 14,
      duration: "59:21"
    },
    {
      name: "The Getaway",
      release_date: "2016-06-17",
      track_count: 13,
      duration: "53:50"
    }
  ],
  "System of a Down" => [
    {
      name: "System of a Down",
      release_date: "1998-06-30",
      track_count: 13,
      duration: "40:36"
    },
    {
      name: "Toxicity",
      release_date: "2001-09-04",
      track_count: 14,
      duration: "44:01"
    },
    {
      name: "Steal This Album!",
      release_date: "2002-11-26",
      track_count: 16,
      duration: "43:22"
    },
    {
      name: "Mezmerize",
      release_date: "2005-05-17",
      track_count: 11,
      duration: "36:06"
    },
    {
      name: "Hypnotize",
      release_date: "2005-11-22",
      track_count: 12,
      duration: "39:40"
    }
  ],
  "Tool" => [
    {
      name: "Undertow",
      release_date: "1993-04-06",
      track_count: 10,
      duration: "69:13"
    },
    {
      name: "Ænima",
      release_date: "1996-09-17",
      track_count: 15,
      duration: "77:18"
    },
    {
      name: "Lateralus",
      release_date: "2001-05-15",
      track_count: 13,
      duration: "78:56"
    },
    {
      name: "10,000 Days",
      release_date: "2006-05-02",
      track_count: 11,
      duration: "75:52"
    }
  ],
  "VNV Nation" => [
    {
      name: "Advance and Follow",
      release_date: "1995-11-30",
      track_count: 15,
      duration: "71:56"
    },
    {
      name: "Praise the Fallen",
      release_date: "1998-06-02",
      track_count: 12,
      duration: "60:52"
    },
    {
      name: "Empires",
      release_date: "1999-10-25",
      track_count: 10,
      duration: "50:58"
    },
    {
      name: "Futureperfect",
      release_date: "2002-01-28",
      track_count: 12,
      duration: "62:28"
    },
    {
      name: "Matter + Form",
      release_date: "2005-04-04",
      track_count: 11,
      duration: "55:08"
    },
    {
      name: "Judgement",
      release_date: "2007-04-10",
      track_count: 10,
      duration: "51:56"
    },
    {
      name: "Of Faith, Power And Glory",
      release_date: "2009-06-19",
      track_count: 10,
      duration: "50:33"
    },
    {
      name: "Automatic",
      release_date: "2011-10-25",
      track_count: 10,
      duration: "56:46"
    },
    {
      name: "Transnational",
      release_date: "2013-10-11",
      track_count: 10,
      duration: "52:29"
    },
    {
      name: "Resonance: Music for Orchestra Vol. 1",
      release_date: "2015-05-15",
      track_count: 11,
      duration: "68:54"
    },
    {
      name: "Noire",
      release_date: "2018-11-02",
      track_count: 13,
      duration: "73:15"
    }
  ]
}

artists.each_with_index do |artist, i|
  album_details[artist[:name]].each do |album|
    artist.albums.create(        name: album[:name],
                         release_date: album[:release_date],
                               track_count: album[:track_count],
                              duration: album[:duration])
  end
end
