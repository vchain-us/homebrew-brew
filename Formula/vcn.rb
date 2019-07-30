class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.5.4"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.4/vcn-v0.5.4-darwin-10.6-amd64"
        sha256 "2d2f3699e1a0401006ad09a8efe6ebe499559dd5a78125f2eeea3c00abbc42ef"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/v0.5.4/vcn-v0.5.4-linux-amd64"
        sha256 "e5029259de11b3daa4220bf2150f05bd8ddaec4de54c0f6543a9bbe558bd02e6"
    end

    def install
        if OS.mac?
            bin.install "./vcn-v0.5.4-darwin-10.6-amd64" => "vcn"
        elsif OS.linux?
            bin.install "./vcn-v0.5.4-linux-amd64" => "vcn"
        end
    end

    test do
        system "#{bin}/vcn", "--help"
    end
end
