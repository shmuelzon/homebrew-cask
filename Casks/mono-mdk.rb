cask 'mono-mdk' do
  version '5.0.0.100'
  sha256 '66398a86a7d7daf1a79ff940a5562c8386f48d7f40693e7936cbb356cf855e1f'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'http://www.mono-project.com/docs/about-mono/releases/index.html',
          checkpoint: 'e4491dc51d494c0af9739a68d2da0582718146aaff098ff94578189ca7bbb22f'
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
