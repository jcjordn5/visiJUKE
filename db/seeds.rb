# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SoundcloudApi.soundcloudwidget.each do |x|
Soundc.create(artwork_url: x['artwork_url'], stream_url: x['stream_url'], title: x['title'], waveform_url: x['waveform_url'], description: x['description'])
end
