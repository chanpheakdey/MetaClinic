let model = {
    stage: 'stageHome',
    year: 2021,
    feed: {
        page: 1, count: 5, loading: false, is_last: false
    }
}

function init() {
    checkQs()
    initName()
    insertLog(0)
}

function checkQs() {
    let user = getQueryStr('user')
    let userId = getQueryStr('userid')
    let deviceId = getQueryStr('deviceid')
    if (user === '' || userId === '') window.location.href = 'https://app.camtesol.org/LoginApp.aspx?AppView=&deviceid=' + deviceId
}

function initName() {
    let userName = document.getElementById('userName')
    if (userName !== undefined && userName !== null) userName.innerText = getQueryStr('name')
}

function changeStage(id, title, articleId, menuId) {
    if (model.stage === id) return
    let stage = document.getElementById(id)
    if (stage !== undefined && stage !== null) {
        $('.stage-title').remove()
        $('#body').removeClass('top-100')
        $('#body').removeClass('stage-box')
        $('body').removeClass('body-black')
		$('.nav-item-active').removeClass('nav-item-active')
        $('#body').scrollTop(0)
        let stageArticle = document.getElementById('stageArticle')
        if (stageArticle !== null && stageArticle !== undefined) stageArticle.innerHTML = ''
        model.stage = id
        switch (id) {
            case 'stageArticle':
                let stage_title = renderEle('div', 'stage-title scroll-x', title)
                stage_title.onclick = function () { changeStage('stageHome', undefined, undefined, 0) }
                appendEle('header', stage_title)
                $('body').addClass('body-black')
                $('#body').addClass('top-100')
                $('#body').addClass('stage-box')
                getArticle(articleId)
                break
            case 'stageFeed':
				$('#navNews').addClass('nav-item-active')
                stage.innerHTML = ''
                getFeeds(true)
                break
			case 'stageMsg':
                break
			case 'stageHome':
				$('#navHome').addClass('nav-item-active')
				break
            case 'stageSpeaker':
                stage.innerHTML = ''
                appendEle('header', renderEle('div', 'stage-title scroll-x', title))
                $('#body').addClass('top-100')
                getSpeaker()
                break
            default:
        }

        $('.stage-active').removeClass('stage-active')
        stage.className += " stage-active"

        if (menuId !== undefined && menuId !== null) {
            insertLog(menuId)
        }
    }
}

function insertLog(menuId) {
    let param = {
        userName: getQueryStr('user'),
        action: 'Access Menu ID',
        entity: 'tblMenu_App_CMS',
        contactId: 0,
        entityMainId: menuId
    }
    $.ajax({
        type: "POST",
        url: "/app.asmx/insertLog",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
        },
        failure: function (response) {
        }
    });
}

function renderEle(tag, className, text) {
    let ele = document.createElement(tag)
    ele.className = className
    if (text !== undefined) ele.innerText = text
    return ele
}

function appendEle(id, ele) {
    let parent = document.getElementById(id)
    parent.appendChild(ele)
}

function getQueryStr(param) {
    let value = "", qSplit
    let query = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&')
    for (let i = 0; i < query.length; i++) {
        qSplit = query[i].split('=')
        if (qSplit[0].toLowerCase() == param.toLowerCase()) {
            value = query[i].slice(query[i].indexOf('=') + 1)
            break
        }
    }
    return value
}

function getFeeds(refresh) {
    model.feed.loading = true
    if (refresh) {
        model.feed.page = 1
        model.feed.is_last = false
    }
    let androidId = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let name = getQueryStr('name')
    let usr = getQueryStr('usr')
    var getUrl = window.location;
    var baseUrl = getUrl.host
    let param = {
        page: model.feed.page,
        count: model.feed.count,
        androidId: androidId,
        userId: userId == '' ? -1 : userId,
        deviceId: deviceId,
        presenterId: presenterId == '' ? -1 : presenterId,
        name: name,
        usr: usr,
        domain: baseUrl
    }

    $.ajax({
        type: "POST",
        url: "/app.asmx/getFeeds",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (response !== null && response.d !== null) {
                let data = JSON.parse(response.d)
                if (data.success) {
                    data.data.map(function (d) {
                        appendEle('stageFeed', renderFeed(d))
                    })
                    model.feed.page += 1
                } else {
                    model.feed.is_last = true
                }
            } else {
                model.feed.is_last = true
            }
            model.feed.loading = false
        },
        failure: function (response) {
        }
    });
}

function renderFeed(html) {
    let ele = document.createElement('div')
    ele.className = 'feed-box'
    ele.innerHTML = html
    return ele
}

function isScrollBottom(element) {
    if ($(element).scrollTop() + $(element).outerHeight() >= element.scrollHeight - 30 && !model.feed.loading && !model.feed.is_last && model.stage === 'stageFeed') {
        getFeeds()
    }
}

function getArticle(id) {
    let androidId = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let name = getQueryStr('name')
    let usr = getQueryStr('usr')
    let param = {
        articleId: id,
        androidId: androidId,
        userId: userId == '' ? -1 : userId,
        deviceId: deviceId,
        presenterId: presenterId == '' ? -1 : presenterId,
        name: name,
        usr: usr
    }

    $.ajax({
        type: "POST",
        url: "/app.asmx/getArticle",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (response !== null && response.d !== null) {
                let data = JSON.parse(response.d)
                if (data.success) {
                    appendEle('stageArticle', renderArticle(data.data))
                }
            }
        },
        failure: function (response) {
        }
    });
}

function renderArticle(html) {
    let ele = document.createElement('div')
    ele.className = 'article-box'
    ele.innerHTML = html
    return ele
}

function submitAbstract() {
    let email = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let st = getQueryStr('static')
	let name = getQueryStr('name')
    let usr = getQueryStr('usr')
    var getUrl = window.location;
    var baseUrl = getUrl.host
    window.location.href = 'https://camtesol.org/MyCamTESOLApp?AppView=abstractsub&user=' + email + '&deviceid=' + deviceId + '&PresenterID=' + presenterId + '&Static=' + st + '&UserID=' + userId + '&name=' + name + '&usr=' + usr + '&Domain=' + baseUrl;
}

function registerConf() {
    let email = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let st = getQueryStr('static')
	let name = getQueryStr('name')
    let usr = getQueryStr('usr')

    var getUrl = window.location;
    var baseUrl = getUrl.host
    window.location.href = 'https://camtesol.org/MyCamTESOLApp?AppView=Registration&user=' + email + '&deviceid=' + deviceId + '&PresenterID=' + presenterId + '&Static=' + st + '&UserID=' + userId + '&name=' + name + '&usr=' + usr + '&Domain=' + baseUrl;
}

function viewProfile() {
    let email = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let st = getQueryStr('static')
	let name = getQueryStr('name')
    let usr = getQueryStr('usr')

    var getUrl = window.location;
    var baseUrl = getUrl.host
    window.location.href = 'https://camtesol.org/MyCamTESOLApp?AppView=MyProfile&user=' + email + '&deviceid=' + deviceId + '&PresenterID=' + presenterId + '&Static=' + st + '&UserID=' + userId + '&name=' + name + '&usr=' + usr + '&Domain=' + baseUrl;
}

function changePwd() {
    let email = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let presenterId = getQueryStr('PresenterID')
    let st = getQueryStr('static')
	let name = getQueryStr('name')
    let usr = getQueryStr('usr')
    var getUrl = window.location;
    var baseUrl = getUrl.host
    window.location.href = 'https://camtesol.org/resetpwdApp?AppView=resetpwd&user=' + email + '&deviceid=' + deviceId + '&PresenterID=' + presenterId + '&Static=' + st + '&UserID=' + userId + '&name=' + name + '&usr=' + usr + '&Domain=' + baseUrl;
}

function viewProgram() {
    let email = getQueryStr('user')
    let userId = getQueryStr('userId')
    let deviceId = getQueryStr('deviceid')
    let name = getQueryStr('name')
    let usr = getQueryStr('usr')
    let year = model.year

    let users = ["sothea.korng@idp.com", "visal.sou@idp.com", "seanghour.huot@idp.com", "visal.sou@acecambodia.org", "hang.heng@idp.com", "panha.nov@acecambodia.org", "korng.sok@acecambodia.org", "chanpheakdey.vong@acecambodia.org", "sunra.yan@acecambodia.org", "fandy.vall@acecambodia.org"]
    if (users.indexOf(email.toLowerCase()) != -1) {
        var getUrl = window.location;
        var baseUrl = getUrl.host
        window.location.href = 'https://camtesolprogram.azurewebsites.net/program?email=' + email + '&UserID=' + userId + '&deviceid=' + deviceId + '&usr=' + usr + '&year=' + year + '&name=' + name + '&Domain=' + baseUrl;
    } else {
        changeStage('stageMsg')
    }
}

function getSpeaker() {
    let param = {
        year: model.year
    }
    $.ajax({
        type: "POST",
        url: "/app.asmx/getSpeaker",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (response !== null && response.d !== null) {
                let data = JSON.parse(response.d)
                if (data.success) {
                    data.data.map(function (d) {
                        appendEle('stageSpeaker', renderSpeaker(d.img, d.workplace, d.position, d.bio))
                    })
                }
            }
        },
        failure: function (response) {
        }
    });
}

function renderSpeaker(img, workplace, position, bio) {
    let i = document.createElement('div')
    i.style.backgroundImage = "url('" + img + "')"
    i.className = 'sp-img'

    let info = document.createElement('div')
    info.className = 'sp-info'
    info.appendChild(renderEle('i', 'fas fa-angle-down fltR'))
    info.appendChild(renderEle('div', '', workplace))
    info.appendChild(renderEle('div', '', position))

    let sp = renderEle('div', 'sp-box')
    sp.appendChild(i)
    sp.appendChild(info)
    sp.appendChild(renderEle('div', 'clrFlt'))
    let sp_detail = renderEle('div', 'sp-detail', bio)
    sp.appendChild(sp_detail)
    sp.onclick = function () {
        $(sp_detail).slideToggle()
    }

    return sp
}

function viewUserSetting(close) {
    let panel = document.getElementById('popup-panel')
    let user_setting = document.getElementById('userSetting')

    if (panel !== undefined && panel !== null) panel.style.display = close ? 'none' : 'block'
    if (user_setting !== undefined && user_setting !== null) user_setting.style.display = close ? 'none' : 'block'
}

function signout() {
    let param = {
        deviceId: getQueryStr('deviceid')
    }
    if (param.deviceId !== '') {
        $.ajax({
            type: "POST",
            url: "/app.asmx/signout",
            data: JSON.stringify(param),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                window.location.href = 'https://app.camtesol.org/login.aspx?AppView=LogOut&deviceid=' + param.deviceId
            },
            failure: function (response) {
            }
        });
    } else {
        window.location.href = 'https://app.camtesol.org/login.aspx?AppView=LogOut&deviceid=' + param.deviceId
    }
    
}

init()