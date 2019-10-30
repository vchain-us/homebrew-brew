class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.7.3"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-10.6-amd64"
        sha256 "c05c8a289271f328a0fd375b058001d5157c637f5ee73a225ca3bab90383f21e"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "e44d2a9264b542566ee93ac5400b48bc4e024beac10c762a6b2d2ea0da3baa5e"
    end

    def install
        if OS.mac?
            bin.install "./vcn-#{version}-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-#{version}-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
