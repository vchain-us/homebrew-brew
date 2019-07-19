class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.5.3"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.3/vcn-v0.5.3-darwin-10.6-amd64"
        sha256 "7799e1d993c648f53762335c5c80cc2eee023f84773438c8823e9c247fabbbb7"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.3/vcn-v0.5.3-linux-amd64"
        sha256 "d2d2ffa76cf4ee681faa85654c24e0ec99fb5d749171a9e94286a07ae3a3350b"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.5.3-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.5.3-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
