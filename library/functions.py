def jsonify_wiki_category (category_name): 
    '''
    Insert category name as a string, note that this is case sensitive
    Make sure to import requests first before using this function
    '''
    base_url = 'https://en.wikipedia.org/w/api.php'
    action = '?action=query'
    generator = '&list=categorymembers&cmtitle='
    params = '&cmlimit=max'
    form = '&format=json'
    
    category_name_url = base_url + action + generator + category_name + params + form
    category_name_response = requests.get(category_name_url)
    return category_name_response.json()
    
