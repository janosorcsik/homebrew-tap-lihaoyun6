cask "airbattery" do
  version "1.6.2"
  sha256 "b4b0d9cfd08a992e3fb1357c0cc3dd6300bd157f922b6e30a398a86b83a5cffc"

  url "https://github.com/lihaoyun6/AirBattery/releases/download/#{version}/AirBattery_v#{version}.dmg"
  name "AirBattery"
  desc "Get the battery level of all your devices on your Mac."
  homepage "https://github.com/lihaoyun6/AirBattery"

  livecheck do
    url "https://github.com/lihaoyun6/AirBattery/releases/latest"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
  
  depends_on macos: ">= :big_sur"

  app "AirBattery.app"

  zap trash: [
    "~/Library/Application Scripts/com.lihaoyun6.AirBattery.widget",
    "~/Library/Application Scripts/com.lihaoyun6.AirBatteryHelper",
    "~/Library/Caches/com.lihaoyun6.AirBattery",
    "~/Library/Containers/com.lihaoyun6.AirBattery.widget",
    "~/Library/Containers/com.lihaoyun6.AirBatteryHelper",
    "~/Library/HTTPStorages/com.lihaoyun6.AirBattery",
    "~/Library/Preferences/com.lihaoyun6.AirBattery.plist",
    "~/Library/WebKit/com.lihaoyun6.AirBattery",
  ]
end
