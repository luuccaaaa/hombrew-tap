    cask "displaylayouts" do
    version "1.0"
    sha256 "e0942d6bfa58d6fe0fe4ce4a0c5f2f16001d00c209bbe9f6122373b348899f13"

    url "https://github.com/luuccaaaa/DisplayLayouts/releases/download/v#{version}/DisplayLayouts-#{version}.dmg",
    verified: "github.com/luuccaaaa/DisplayLayouts/"
    name "DisplayLayouts"
    desc "Menu bar app to switch multi-monitor layouts"
    homepage "https://github.com/luuccaaaa/DisplayLayouts"

    livecheck do
    url :url
    strategy :github_latest
    end

    depends_on macos: ">= :monterey"

    app "DisplayLayouts.app"

    zap trash: [
    "~/Library/Preferences/io.github.lpedrocchi.displaylayouts.plist",
    "/Library/Application Support/DisplayLayouts",
    "~/Library/Saved Application State/io.github.lpedrocchi.displaylayouts.savedState",
    "/Library/Logs/DisplayLayouts",
    ]
    end
