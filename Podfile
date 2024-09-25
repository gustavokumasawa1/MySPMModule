# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def app_pods
    pod "DesignSystem", :git => "git@github.com:Evino/ios-design-system.git", :tag => "0.13.3"
    pod "Networking", :git => "git@github.com:vissimo-group/erbamat-networking.git", :tag => "0.1.12"
    pod "Utilities", :git => "git@github.com:vissimo-group/erbamat-utilities.git", :tag => "0.1.8"
    pod "Analytics", :git => "git@github.com:vissimo-group/erbamat-analytics.git", :tag => "0.4.14"
  end
  
  target 'MySPMModule' do
    # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks!
    app_pods
    
    target 'AddressTests' do
      inherit! :search_paths
      app_pods
    end
    
    target 'AddressSample' do
      inherit! :search_paths
      app_pods
      
    end
  end
  