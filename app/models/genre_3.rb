class Genre3 < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '恋愛' },
    { id: 3, name: 'ヒューマンドラマ' },
    { id: 4, name: 'サスペンス・ミステリー' },
    { id: 5, name: 'ホラー' },
    { id: 6, name: 'ギャグ・コメディー' },
    { id: 7, name: '職業・ビジネス' },
    { id: 8, name: '医療・病院' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: '歴史・時代劇' },
    { id: 11, name: 'SF・ファンタジー' },
    { id: 12, name: 'ヤンキー・任侠' },
    { id: 13, name: 'ギャンブル' },
    { id: 14, name: 'スポーツ' },
    { id: 15, name: '動物' },
    { id: 16, name: '異世界' },
    { id: 17, name: 'アクション' },
    { id: 18, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
