class QuoteModel {
  String? author;
  int? id;
  String? content;
  String? permalink;

  QuoteModel(
      {required this.author,
      required this.id,
      required this.content,
      required this.permalink});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    id = json['id'];
    content = json['quote'];
    permalink = json['permalink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['id'] = this.id;
    data['quote'] = this.content;
    data['permalink'] = this.permalink;
    return data;
  }
}
