class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.7.0"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.7.0/vcn-v0.7.0-darwin-10.6-amd64"
        sha256 "0b8f652fd9ee2fbd8a793fc3dcd387b0e22b85652db021e6f6f90be73d3d8088"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.7.0/vcn-v0.7.0-linux-amd64"
        sha256 "943a62c7043db6479628a2742f728bff2537359787da88360ce1aa761b7819e9"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.7.0-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.7.0-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
