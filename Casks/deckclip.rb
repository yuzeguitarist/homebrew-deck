cask "deckclip" do
  version "1.4.1"
  sha256 "007d3d80ec9430ffa36e5518e51e503f2ba5a5b5ea31c47d72ba915710fbfb7a"

  url "https://github.com/yuzeguitarist/Deck/releases/download/v#{version}/Deck.dmg",
      verified: "github.com/yuzeguitarist/Deck/"
  name "Deck"
  desc "Privacy-first clipboard manager"
  homepage "https://deckclip.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Deck.app"

  zap trash: [
    "~/Library/Application Scripts/com.yuzeguitar.Deck",
    "~/Library/Application Support/Deck",
    "~/Library/HTTPStorages/com.yuzeguitar.Deck",
    "~/Library/HTTPStorages/com.yuzeguitar.Deck.binarycookies",
    "~/Library/HTTPStorages/Deck",
    "~/Library/Preferences/com.yuzeguitar.Deck.plist",
  ]
end
