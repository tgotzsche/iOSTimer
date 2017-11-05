Pod::Spec.new do |spec|
spec.name = "iOSTimer"
spec.version = "1.0.0"
spec.summary = "Simple timer for iOS"
spec.homepage = "https://github.com/tgotzsche/iOSTimer"
spec.license = { type: 'MIT', file: 'LICENSE' }
spec.authors = { "Thomas Gotzsche" => 'tgotzsche@gmail.com' }

spec.platform = :ios, "9.1"
spec.requires_arc = true
spec.source = { git: "https://github.com/tgotzsche/iOSTimer.git", tag: "v#{spec.version}", submodules: true }
spec.source_files = "iOSTimer/**/*.{h,m}"
end
