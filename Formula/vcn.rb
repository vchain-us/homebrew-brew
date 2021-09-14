class Vcn < Formula
    desc "Codenotary Cloud Command-Line Interface"
    homepage "https://www.codenotary.com"
    version "v0.9.9"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-amd64"
        sha256 "d39824501bfe6e3ffcc91c4cf458650ba4f3a86a3f7f57e2209d5de7aac246de"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "0afff16bd636c1a53437c389736848186670f31096785779392fa66c3b03a803"
    end

    def install
        if OS.mac?
            bin.install "./vcn-#{version}-darwin-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-#{version}-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
