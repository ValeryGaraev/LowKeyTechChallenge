# PhotosAPI

All URIs are relative to *https://api.pexels.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCuratedPhotos**](PhotosAPI.md#getcuratedphotos) | **GET** /curated | Get curated photos


# **getCuratedPhotos**
```swift
    open class func getCuratedPhotos(page: Int, perPage: Int, completion: @escaping (_ data: CuratedPhotosResponse?, _ error: Error?) -> Void)
```

Get curated photos

Retrieve a list of curated photos from Pexels API

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LowKeyClient

let page = 987 // Int | Page number (default to 1)
let perPage = 987 // Int | Number of photos per page (default to 15)

// Get curated photos
PhotosAPI.getCuratedPhotos(page: page, perPage: perPage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Page number | [default to 1]
 **perPage** | **Int** | Number of photos per page | [default to 15]

### Return type

[**CuratedPhotosResponse**](CuratedPhotosResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

