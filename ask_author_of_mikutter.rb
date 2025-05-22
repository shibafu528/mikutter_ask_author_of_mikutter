# frozen_string_literal: true

Plugin.create(:ask_author_of_mikutter) do
  command(:ask_author_of_mikutter, 
          name: 'mikutterの作者は誰？',
          condition: -> _ { true },
          visible: true,
          role: :postbox) do |opt|
    world, = Plugin.filtering(:world_current, nil)
    compose(world, body: "@teobot@social.mikutter.hachune.net 今日のmikutterの作者は誰ですか？")
  end
end
