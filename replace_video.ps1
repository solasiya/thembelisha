$content = Get-Content "d:\Websites\Thembelisha\about.html" -Raw

# Replace the video section
$oldVideoSection = '                    <div class="col-lg-5 wow fadeIn" data-wow-delay="0.1s">[\s\S]*?<div class="border rounded">[\s\S]*?<button[\s\S]*?<\/button>[\s\S]*?<\/div>[\s\S]*?<\/div>'
$newVideoSection = '                    <div class="col-lg-5 wow fadeIn" data-wow-delay="0.1s">
                        <div class="border rounded">
                            <img src="img/Kids.gif" class="img-fluid w-100 rounded" alt="Kids at Thembelisha">
                        </div>
                    </div>'

$content = [regex]::Replace($content, $oldVideoSection, $newVideoSection)

# Remove the video modal
$modalSection = '        <!-- Modal Video -->[\s\S]*?<div class="modal fade" id="videoModal"[\s\S]*?<\/div>[\s\S]*?<\/div>[\s\S]*?<\/div>[\s\S]*?<\/div>[\s\S]*?<\/div>'
$content = [regex]::Replace($content, $modalSection, '')

$content | Set-Content "d:\Websites\Thembelisha\about.html" -NoNewline
