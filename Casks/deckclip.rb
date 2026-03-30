cask "deckclip" do
  version "1.3.8"
  sha256 "ef0750a5b857b8af9010717e0178a740b4af340d770441f2fc54880d33ca0600"

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
