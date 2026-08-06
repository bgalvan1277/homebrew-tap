cask "no-bloat-pdf" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.4.0"
  sha256 arm:   "8e684f47c446a6580bdec1ef7840faacc39693445e1401032a194f212d565676",
         intel: "2112ffb8271cbb3847e9f87f50d2ee176a88300c1d99107d0617db0189b6a16d"

  url "https://github.com/bgalvan1277/NoBloatPDF/releases/download/v#{version}/NoBloatPDF-#{version}-#{arch}.dmg",
      verified: "github.com/bgalvan1277/NoBloatPDF/"
  name "No Bloat PDF"
  desc "Lightweight PDF viewer that makes no network calls"
  homepage "https://www.nobloatpdf.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "No Bloat PDF.app"

  zap trash: [
    "~/Library/Application Support/com.briangalvan.nobloatpdf",
    "~/Library/Caches/com.briangalvan.nobloatpdf",
    "~/Library/HTTPStorages/com.briangalvan.nobloatpdf",
    "~/Library/Preferences/com.briangalvan.nobloatpdf.plist",
    "~/Library/Saved Application State/com.briangalvan.nobloatpdf.savedState",
    "~/Library/WebKit/com.briangalvan.nobloatpdf",
  ]
end
