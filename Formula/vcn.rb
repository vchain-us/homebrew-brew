class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.1/vcn-v0.5.1-darwin-10.6-amd64"
        sha256 "8bb283ed471df2495bdeb2a583641c48f301a012a76d3c011f7e416080ecdb82"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.1/vcn-v0.5.1-linux-amd64"
        sha256 "459ebf4bf2200cf7aeff234e6a92b34df75acf6d12134243e2fda100c5a1c3e2"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.5.1-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.5.1-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
