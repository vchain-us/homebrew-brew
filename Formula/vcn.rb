class Vcn < Formula
    desc "VChain Code Notary Command-Line Interface"
    homepage "https://www.codenotary.io"
    version "v0.8.3"
    if OS.mac?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-darwin-amd64"
        sha256 "8f6dd3b51404537f5fbfff46b9967deaa2fa66fef270082337eceaabeb9f1e2b"
    elsif OS.linux?
        url "https://github.com/vchain-us/vcn/releases/download/#{version}/vcn-#{version}-linux-amd64"
        sha256 "78346fce90072ab39287645ff3a3acbca4a88386f646b4a2eac40c1481215dfe"
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
