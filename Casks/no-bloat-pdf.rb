cask "no-bloat-pdf" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.5.0"
  sha256 arm:   "2c4b11b0eb300ff98e6143f118fc67bf1281a01336dace35332511a903af08bc",
         intel: "ace4c4f3637af250351f6a0ecdbe1961bf82451d56fa0e19385eafe399b5a317"

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
