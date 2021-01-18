def build_web_page(data)
    return '<html>
    <head>
    </head>
    <body>
    <ul>
        ' + build_list_item(data["photos"]) +'
    </ul>
    </body>
    </html>'
end

def build_list_item(photos)
    html = ''
    photos.each do |photo|
        html += '<li><img src="'+ photo["img_src"] +'"></li>'
        html += " \n"
    end
    return html
end
