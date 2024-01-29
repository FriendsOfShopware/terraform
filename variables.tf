variable "github_app_id" { default = null }
variable "github_app_installation_id" { default = null }
variable "github_app_pem_file" { default = null }

variable "administrators" {
  default = [
    "shyim",
    "tinect",
  ]
}

variable "members" {
  default = [
    "alexba",
    "aragon999",
    "christian-rades",
    "crease29",
    "dneustadt",
    "fionera",
    "jkrzefski",
    "jochenmanz",
    "joshuabehrens",
    "kleinmann",
    "larsbo",
    "leichteckig",
    "mitelg",
    "niklaslimberg",
    "pumpi",
    "shyim",
    "sobyte",
    "stefanpoensgen",
    "tinect",
    "vienthuong",
    "xndrdev",
    "frosh-ci"
  ]
}

variable "repositories" {
  default = {
    terraform = {
        description = "Manage GitHub organization with Terraform"
    }
    actions = {
        description = "Collection of reusable workflows"
    }
    "api.friendsofshopware.com" = {
        description = "Basic data aggregation for the Friends of Shopware API"
    }
    shopware-static-data = {
        description = "Static JSON information about Shopware"
    }
    api-doc = {
        description = "Hosting the Swagger for Shopware 6"
    }
    FroshDevelopmentHelper = {
        description = "Helpful development tools"
    }
    FroshPlatformShareBasket = {
        description = "This plugin allows your customers to save the current basket and share it via link."
    }
    shopware-rector = {
        description = "Rector rules for Shopware 6"
    }
    FroshTools = {
        description = "A collection of useful tools for Shopware 6"
    }
    FroshPlatformThumbnailProcessor = {
        description = "This shopware6 plugin allows you to use variable thumbnails - on the fly. Including lazy loading."
        has_discussions = true
    }
    FroshProductCompare = {
        description = "This plugin allows your customers to compare products."
    }
    FroshRobotsTxt = {
        description = "This plugin allows you to manage your robots.txt file."
    }
    FroshPlatformBunnycdnMediaStorage = {
        description = "This plugin allows you to use BunnyCDN as a media storage."
        has_discussions = true
    }
    FroshLazySizes = {
        description = "This plugin allows you to use lazy loading for your images."
    }
    FroshPlatformTemplateMail = {
        description = "This plugin allows you to use twig mails in Shopware 6."
    }
    FroshPlatformFilterSearch = {
        description = "This plugin allows you to filter search results."
    }
    FroshPlatformHtmlMinify = {
        description = "This plugin allows you to minify your HTML output."
    }
    shopmon = {
        description = "Shopware Shop Monitoring"
    }
    shopware-cli = {
        description = "CLI for Shopware Account and Shopware 6"
    }
    homebrew-tap = {
        description = "Homebrew tap for shopware-cli"
    }
    go-shopware-admin-api-sdk = {
        description = "Go SDK for the Shopware 6 Admin API"
    }
    FroshPlatformAdminer = {
        description = "Adminer plugin for Shopware Platform"
    }
    FroshPlatformMailArchive = {
        description = "This plugin allows you to archive your mails."
    }
    platform-plugin-dev-docker = {
        description = "Docker image containing useful stuff for plugin development"
    }
    css-api = {
        description = "CSS API using Cloudflare Workers"
    }
    FroshBoard = {
        description = "Lists all issues of the Github Organization"
    }
    FroshAppWebDav = {
        description = "This plugin allows you to access with WebDav the Shopware media manager"
    }
    homepage = {
        description = "Shopware Homepage"
    }
    shopware-storefront-sdk = {
        description = "Shopware Storefront SDK"
    }
    devenv-meta = {
        description = "Meta repository for Shopware 6 development environment"
    }
    FroshWebP = {
        description = "WebP Support for Shopware"
    }
    FroshPluginUploader = {
        description = "[deprecated] This plugin allows you to upload your plugin to the Shopware Store"
    }
    gitpod-meta = {
        description = "Gitpod for Shopware 6"
    }
    FroshProfiler = {
        description = "This plugin allows you to profile your Shopware 5 application"
    }
    FroshCartCrossSelling = {
        description = "This plugin allows you to show cross selling products in the cart"
    }
    "shopwaretherightway.com" = {
        description = "Shopware the right way"
    }
    FroshTemplateMailMjml = {
        description = "This plugin allows you to use MJML in your template mails"
    }
    FroshTemplateMail = {
        description = "This plugin allows you to use Smarty in your template mails"
    }
    FroshBunnycdnMediaStorage = {
        description = "This plugin allows you to use BunnyCDN as a media storage."
    }
    aws-php-syntax-checker-lambda = {
        description = "AWS Lambda function to check PHP syntax"
    }
    FroshSmartInputLabel = {
        description = "This plugin allows you to use smart input labels"
    }
    FroshAdminer = {
        description = "Adminer plugin for Shopware"
    }
    ".github" = {
        description = "Default community health files for the FriendsOfShopware organization"
    }
    FroshPlatformThumbnailProcessorImgProxy = {
        description = "This plugin allows you to use imgproxy as a thumbnail processor"
    }
    FroshAdminSalesChannelSearch = {
        description = "This plugin allows you to search for sales channels"
    }
    default-plugin-repo = {
        description = "Default plugin template repository for Shopware 6"
    }
    shopware-chart = {
        description = "Helm chart based on shyim/shopware"
    }
    FroshTinker = {
        description = "This plugin allows you to use tinker in Shopware 6"
    }
    FroshThumbnailProcessor = {
        description = "This plugin allows you to use variable thumbnails - on the fly. Including lazy loading."
    }
    FroshMailCatcher = {
        description = "This plugin allows you to catch mails in Shopware 5"
    }
    FroshFasterCacheManager = {
        description = "This plugin allows you to clear the cache faster"
    }
    FroshShareBasket = {
        description = "This plugin allows your customers to save the current basket and share it via link."
    }
    FroshVariantSwitch = {
        description = "This plugin allows you to switch between variants"
    }
    FroshHttpCacheIpExclude = {
        description = "This plugin allows you to exclude IP addresses from the HTTP cache"
    }
    FroshSimultaneousEditNotification = {
        description = "This plugin allows you to get notified when someone is editing the same entity"
    }
    FroshPlatformPerformance = {
        description = "This plugin allows you to improve the performance of your Shopware 5 application"
    }
    FroshViewSnapshots = {
        description = "This plugin allows you to take view snapshots"
    }
    "friendsofshopware.github.io" = {
        description = "FriendsOfShopware website"
    }
    FroshTemplateExtensions = {
        description = "This plugin allows you to use additional template extensions"
    }
    FroshIonCubeChecker = {
        description = "This plugin allows you to check if your Shopware 5 installation is compatible without ionCube"
    }
    FroshFilterSearch = {
        description = "This plugin allows you to filter search results."
    }
    FroshTinyPngMediaOptimizer = {
        description = "This plugin allows you to optimize your media files with TinyPNG"
    }
    FroshMailArchive = {
        description = "This plugin allows you to archive your mails."
    }
    FroshEoriNumber = {
        description = "This Shopware platform plugin adds the possibility to specify an EORI number."
    }
    FroshNicerAdmin = {
        description = "This plugin is a game-changer for administration! With an intuitive interface and streamlined features, managing your administration has never been better."
    }
    code-quality-meta = {
        description = "Meta repository for Shopware 6 code quality tools"
    }
  }
}
