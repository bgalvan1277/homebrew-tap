cask "no-bloat-pdf" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.4.1"
  sha256 arm:   "e8937652b6eae15589a9149ffb3760f36e37c738e953094aed2944e28a86d167",
         intel: "545124749ed3a13c1a9569a549585caeaf7620e8fe43fdbf410a0e28fc6711b1"

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
