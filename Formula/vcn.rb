class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.2/vcn-v0.5.2-darwin-10.6-amd64"
        sha256 "d2c37a4eeb6786e7bc91611a4d18a9936b80cf4f70d6cfb8f0a45eba8a2e692f"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.2/vcn-v0.5.2-linux-amd64"
        sha256 "9ef4c9e6e691607fba665512dcfd5efbbefe48be6e67ca074f4a2c0edb04381a"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.5.2-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.5.2-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
