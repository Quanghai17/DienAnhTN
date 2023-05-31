@php
  $pageCount = 2;
@endphp

@if ($paginator->hasPages())
  <!-- Pagination -->
  <nav class="Page navigation mg-top-100">
    <ul class="pagination">
      {{-- Previous Page Link --}}
      @if ($paginator->onFirstPage())
      @else
        <li><a class="nav-arrow" href="{{ $paginator->previousPageUrl() }}"><i class="fa fa-angle-double-left"></i></a></li>
      @endif

      {{-- Pagination Elements --}}
      @foreach ($elements as $element)
        {{-- Array Of Links --}}
        @if (is_array($element))
          @php
            $dotleft = false;
            $dotright = false;
          @endphp
          @foreach ($element as $page => $url)
            @if ($page == $paginator->currentPage())
              <li><a href="#">{{ $page }}</a></li>

            @elseif ($page <= $pageCount || (abs($paginator->currentPage() - $page) <= $pageCount && $paginator->currentPage() != 1 && $paginator->currentPage() != $paginator->lastPage()) || $page > $paginator->lastPage() - $pageCount)

              <li><a href="{{ $url }}">{{ $page }}</a></li>

            @elseif ($page > $pageCount && $page < $paginator->currentPage() && $dotleft == false)
              @php
                $dotleft = true
              @endphp
              <li>
                <span>
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                </span>
              </li>

            @elseif ($page <= $paginator->lastPage() - $pageCount && $page > $paginator->currentPage() && $dotright == false)
              @php
                $dotright = true
              @endphp
              <li>
                <span>
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                </span>
              </li>
            @endif
          @endforeach
        @endif
      @endforeach

      {{-- Next Page Link --}}
      @if ($paginator->hasMorePages())
        <li><a class="nav-arrow" href="{{$paginator->nextPageUrl()}}"><i class="fa fa-angle-double-right"></i></a></li>
      @endif
    </ul>
  </nav>
  <!-- Pagination -->
@endif
