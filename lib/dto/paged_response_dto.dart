class PaginatedResponseDto<T> {
  final int count;
  final int pages;
  final String? next;
  final String? prev;
  final List<T> results;

  PaginatedResponseDto({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
    required this.results,
  });

  factory PaginatedResponseDto.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) fromJsonModel) {
    return PaginatedResponseDto(
      count: json['info']['count'],
      pages: json['info']['pages'],
      next: json['info']['next'],
      prev: json['info']['prev'],
      results: List<T>.from(
        (json['results'] as List).map((item) => fromJsonModel(item)),
      ),
    );
  }
}
