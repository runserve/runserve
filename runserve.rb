class Runserve < Formula
  desc 'NodeJS Docker Development Environment'
  homepage 'https://runserve.io'
  version '0.0.6'
  url 'https://github.com/runserve/runserve/archive/v0.0.6.tar.gz'
  sha256 '1f5a17358dd57276aad3538edcf38d584670898fd70d8cb5ada194313cda4db9'
	def install
		bin.install 'runserve'
	end
end
