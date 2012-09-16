local Gamestate = require 'vendor/gamestate'
local window = require 'window'
local fonts = require 'fonts'
local camera = require 'camera'
local sound = require 'vendor/TEsound'
local state = Gamestate.new()

function state:init()
end

function state:enter(previous)
    fonts.set( 'big' )
    love.graphics.setBackgroundColor(0, 0, 0)
    sound.playMusic( "credits" )
    self.ty = 0
    camera:setPosition(0, self.ty)
    self.previous = previous
end

function state:leave()
    fonts.reset()
end

function state:update(dt)
    self.ty = self.ty + 50 * dt
    camera:setPosition(0, self.ty)
end

function state:keypressed(key)
    if key == 'escape' or key == 'return' or key == 'kpenter' then
        Gamestate.switch(self.previous)
    end
end

state.credits = {
    'CREDITS',
    '6sutters',
    'a8252359',
    'aaronpetykowski',
    'academania',
    'acedia',
    'acharmee',
    'add_attack',
    'afiveseven',
    'afuturepresident',
    'ajay182',
    'akobrandon',
    'alkhava',
    'alpenghandi',
    'andcat7',
    'andyantsypants',
    'anthonycoolcoolcoolpants',
    'anton9109',
    'aprgl',
    'archerman1988',
    'arrianj',
    'arthurpdent',
    'arussoh',
    'asdf',
    'ashadenoir',
    'atbvids',
    'austinofdoom',
    'automatic_taglines',
    'avatarkc',
    'bagofswagg',
    'barry.se',
    'beebes',
    'beforemonsters',
    'benfranklinchang',
    'benlew',
    'bigchangtheory',
    'bluecalx2',
    'bobkanob',
    'boobatron4000',
    'buckybrewer',
    'cabbo',
    'calebjohn',
    'calledieu',
    'cammo_1234',
    'campadrenalin',
    'cant remember',
    'chanchan88',
    'charlottemcewan',
    'charmee',
    'childishgambino93',
    'childish_gambino3',
    'chrissawyers',
    'ciocori',
    'clairelabear',
    'clairelebear',
    'claywin',
    'clogan1',
    'cmdoptesc',
    'condoreo',
    'coolman1081',
    'coray8',
    'coreyander',
    'covertpz',
    'cptbooyah',
    'creedogv',
    'creekee',
    'cyberpie118',
    'cynical_redditor',
    'dancingshadow',
    'dano1163',
    'daspectre',
    'de3ertf0x',
    'deadpoolismyhomeboy',
    'deckhipstername',
    'delicioussoma',
    'derferman',
    'didory123',
    'diegothegnome',
    'dont do',
    'dontgochinatownme',
    'dr. awesome',
    'durrel',
    'dyan654',
    'easilyremember',
    'echiro-oda-fan',
    'edisonout',
    'edsterman',
    'eighthmaster',
    'elduderino103',
    'eleetpancake',
    'elfaisa',
    'enshinohone',
    'erlendbv',
    'eron69',
    'errol333',
    'ethiophia1',
    'everydaymuffin',
    'eviltimmy',
    'evil_abed',
    'evman50',
    'evsboy123',
    'ezeled42',
    'fanjeta123',
    'fannyfeeny',
    'fapficionado',
    'fardy',
    'fawltywiring',
    'feldbergi14',
    'fieldafar',
    'filmsauce',
    'funkygorilla93',
    'gameboy09',
    'gameoftardises',
    'gingrbeard',
    'gizmo9002',
    'glasenator',
    'graf_rotz',
    'greetingsadm',
    'guyinhat',
    'gvx',
    'gyaruson',
    'hbjudo17',
    'heikon',
    'hisfavouriteflavour',
    'holyhandgnade13',
    'icanhas',
    'idontusereddit',
    'igotaxmastime4me',
    'ihumanable',
    'ironsyndicate',
    'jackim',
    'james92498',
    'jamesrustles1994',
    'janaya',
    'janaya1997',
    'jcoleondabeat',
    'jedi_idiot',
    'jewporn',
    'jgyori29',
    'jiggpig',
    'jjangu',
    'jjfresh814',
    'jorbob',
    'joshcorr',
    'jpole1',
    'jrbossack',
    'jrcjer',
    'jscuur',
    'jvvb126',
    'kanuck94',
    'kastian',
    'kaworus_lover',
    'kazook',
    'kcig',
    'kevwasam',
    'kickpuncher08',
    'kidcudiwins',
    'kiharder',
    'kilakev',
    'klosec12',
    'konyismydad',
    'lamboman10',
    'lasternom',
    'lavenenosa',
    'lc514',
    'letharg',
    'lifedreamcreate',
    'liwaldo',
    'lmol99',
    'lvl5lazorlotus',
    'lyhome',
    'maathewdavis',
    'majestic_moose',
    'malarchymike',
    'mario3d',
    'masonnixon',
    'matthewdelacruz15',
    'max100101',
    'maxerj',
    'mcclellan',
    'mckriet',
    'megatruck',
    'mexicanace',
    'midnightbarber',
    'mikedem',
    'mikevin',
    'mister_spider',
    'mminson',
    'mtwstudios',
    'muugin',
    'myers78',
    'mystro256',
    'm_a_d',
    'nachojarred',
    'nbieter',
    'necral',
    'necromanteion',
    'nerdsavvy',
    'niksn',
    'niles_smiles',
    'nimnams',
    'nonisredael',
    'notablyconventional',
    'notfreshprince',
    'notryanclark',
    'nyan_swanson',
    'octocycle2',
    'ohsin',
    'omgimcobe',
    'operia',
    'ormagoden',
    'outlandishflamingo',
    'paintyfilms',
    'paperplatemasks',
    'paragon19',
    'period blood',
    'philoctitties',
    'piratejesus',
    'pmaynard',
    'profbauer',
    'professorianduncan',
    'rahmeeroh',
    'rainfly_x',
    'ramblinfirefox',
    'redecho',
    'renako',
    'retromation',
    'ronjon13',
    'roundy210',
    'rydershea',
    'ryneweir',
    'safetytorch',
    'sallybranch',
    'sandytreee',
    'saracenar',
    'seanbroney',
    'sherlockholme',
    'shinzura',
    'shnook21',
    'sillyboots',
    'simmonsisfinished',
    'simsoy',
    'sirdregan',
    'slamindingo',
    'smilingkevin',
    'snokone',
    'sowhy',
    'spla08',
    'spritefan',
    'sprneon',
    'spuddeh',
    'stevensmiley',
    'streetsahead',
    'suspicious_37',
    'systemsoverload',
    'tenshinohone',
    'tgnsd',
    'thedanefromspain',
    'the govnor',
    'thegreenhat',
    'thejordyd',
    'thekurtin',
    'thewill2live',
    'thomasmb',
    'tigeris',
    'tjvezina',
    'tlivingston15',
    'tonyator',
    'townhouseindustries',
    'trevorstarick',
    'tristian',
    'tristianshaut',
    'tyhannasaurus',
    'ultraelite',
    'unameriquinn',
    'username1979',
    'vilhelmsmurphy',
    'vintagefuture',
    'viper61989',
    'vontd',
    'wandersfar',
    'wilburwright',
    'wubbledaddy',
    'wyken',
    'xequalsalex',
    'xiaorobear',
    'yigabar',
    'zaxerone',
    'zchmhssn89',
    'zhai',
    'znuese',
    
}

function state:draw()
    local shift = math.floor(self.ty/25)
    for i = shift - 11, shift + 1 do
        local name = self.credits[i]
        if name then
            love.graphics.printf(name, 0, 250 + 25 * i, window.width, 'center')
        end
    end
end

return state


