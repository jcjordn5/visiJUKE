class SoundcloudApi
	require('httparty')

	def self.soundcloudwidget
		@sounds = []

		@categories = ['alternative+rock','ambient','classical','dance+&+edm','deep+house','disco','drum+&+bass','dubstep','electronic','hip+hop+&+rap','house','indie','jazz+&+blues','latin','metal','pop','r&b+&+soul','reggae','reggaeton','rock',
		'techno','trance','techno','trap','trip+hop']
		spull = HTTParty.get("https://api-v2.soundcloud.com/explore/#{@categories.sample}?limit=12&offset=0&client_id=#{ENV['SoundCloudKey']}&callback=processTracks")

		spull["tracks"].each do |x|
			@sounds.push(x)
		end

		return @sounds
	end
end
