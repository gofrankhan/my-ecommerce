@php
    $tags_en = App\Models\Product::pluck('product_tags_en')->toArray();

    $allTags_en = [];
    foreach ($tags_en as $tagString) {
        $individualTags = explode(',', $tagString);
        $allTags_en = array_merge($allTags_en, $individualTags);
    }
    $uniqueTags_en = array_values(array_unique($allTags_en));

    $tags_bn = App\Models\Product::pluck('product_tags_bn')->toArray();
    $allTags_bn = [];
    foreach ($tags_bn as $tagString) {
        $individualTags = explode(',', $tagString);
        $allTags_bn = array_merge($allTags_bn, $individualTags);
    }
    $uniqueTags_bn = array_values(array_unique($allTags_bn));

@endphp
<div class="sidebar-widget product-tag wow fadeInUp">
    <h3 class="section-title">Product tags</h3>
    <div class="sidebar-widget-body outer-top-xs">
        <div class="tag-list">
            @if (session()->get('language') == 'bangla')
                @foreach ($uniqueTags_bn as $tag)
                    <a class="item active" title="Phone" href="{{ url('product/tag/' . $tag) }}">
                        {{ $tag }}</a>
                @endforeach
            @else
                @foreach ($uniqueTags_en as $tag)
                    <a class="item active" title="Phone" href="{{ url('product/tag/' . $tag) }}">
                        {{ $tag }}</a>
                @endforeach
            @endif
        </div>
        <!-- /.tag-list -->
    </div>
    <!-- /.sidebar-widget-body -->
</div>
<!-- /.sidebar-widget -->
